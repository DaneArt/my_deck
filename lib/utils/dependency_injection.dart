import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:mydeck/blocs/auth/auth_bloc.dart';
import 'package:mydeck/blocs/library/library_bloc.dart';

import 'package:mydeck/blocs/tab/tab_bloc.dart';
import 'package:mydeck/blocs/train/train_bloc.dart';
import 'package:mydeck/cubits/md_image/md_image_cubit.dart';
import 'package:mydeck/services/datasources/file_local_datasource.dart';
import 'package:mydeck/services/datasources/file_network_datasource.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/get_file_by_meta_usecase.dart';
import 'package:mydeck/services/usecases/sign_in_usecase.dart';
import 'package:mydeck/services/usecases/sign_up_usecase.dart';
import 'package:mydeck/utils/google_token_factory.dart';
import 'package:mydeck/utils/token_interceptor.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:mydeck/utils/network_connection.dart';

import 'package:mydeck/services/datasources/deck_network_datasource.dart';

import 'package:mydeck/services/repositories/deck_repository.dart';

import 'package:mydeck/services/usecases/add_deck_usecase.dart';
import 'package:mydeck/services/usecases/delete_deck_usecase.dart';
import 'package:mydeck/services/usecases/get_all_current_user_decks_usecase.dart';
import 'package:mydeck/services/usecases/get_decks_for_train_usecase.dart';
import 'package:mydeck/services/usecases/load_decks_page_for_category_usecase.dart';
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/services/usecases/update_deck_usecase.dart';
import 'package:mydeck/services/usecases/update_trained_cards.dart';
import 'package:mydeck/services/usecases/upload_online_deck.dart';

import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';

import 'package:mydeck/utils/auth_facade.dart';
import 'package:mydeck/utils/value_validators.dart';
import 'package:mydeck/services/usecases/google_signin_usecase.dart';
import 'package:cookie_jar/cookie_jar.dart';

final sl = GetIt.I;
const BASE_URL_DEV = 'https://10.0.2.2:4001';
void setUp() {
  //data sources
  sl.registerLazySingleton<FileNetworkDataSource>(
      () => FakeFileNetworkDataSource());
  sl.registerLazySingleton<FileLocalDataSource>(
      () => FileLocalDataSourceImpl());
  sl.registerLazySingleton<DeckNetworkDataSource>(
      () => DeckNetworkDataSourceImpl(
            client: sl(),
          ));
  sl.registerLazySingleton<UserNetworkDataSource>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL_DEV + '/mydeckapi',
        connectTimeout: 30000,
        receiveTimeout: 20000,
      ),
    )..interceptors.add(CookieManager(sl()));
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    return UserNetworkDataSourceImpl(sl(), dio);
  });

  //RestApi
  sl.registerFactory(() => DataConnectionChecker());
  sl.registerFactory<IAuthFacade>(() => AuthFacadeImpl(sl(), sl(), sl()));
  sl.registerFactory<NetworkConnection>(() => NetworkConnectionImpl(sl()));
  sl.registerFactory(() => GoogleSignIn());
  sl.registerFactory(() => SignUpUsecase(userNetworkDataSource: sl()));
  sl.registerFactory(() => AccessTokenValidator());
  sl.registerFactory(() => GoogleTokenFactory());
  sl.registerSingleton<CookieJar>(CookieJar());
  sl.registerFactory(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL_DEV + '/mydeckapi',
        connectTimeout: 30000,
        receiveTimeout: 20000,
        headers: {
          // HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.authorizationHeader: 'Bearer ${UserConfig.accessToken}'
        },
      ),
    )..interceptors.addAll(
        [
          CookieManager(
            sl(),
          ),
          TokenInterceptor(
            accessTokenValidator: sl(),
          ),
        ],
      );
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    return dio;
  });

  //repository
  sl.registerLazySingleton<DeckRepository>(() => FakeDeckRepository(sl()));
  sl.registerLazySingleton<FileRepository>(
    () => FileRepositoryImpl(
      sl(),
      sl(),
      sl(),
    ),
  );

  //use cases
  sl.registerFactory(() => UploadOnlineDeckUsecase(myDeckRepository: sl()));
  sl.registerFactory(() => GoogleSignInUsecase(sl(), sl(), sl()));
  sl.registerFactory(() => SignInUsecase(sl()));
  sl.registerFactory(() => LoadDecksPageForCategoryUsecase(sl()));
  sl.registerFactory(() => SaveDeckChangesUsecase(sl()));
  sl.registerFactory(() => DeleteDeckUseCase(sl()));
  sl.registerFactory(() => UpdateDeckUsecase(myDeckRepository: sl()));
  sl.registerFactory(() => GetDecksForTrain());
  sl.registerFactory(() => LoadUserLibraryUseCase(repository: sl()));
  sl.registerFactory(() => AddDeckUseCase(myDeckRepository: sl()));
  sl.registerFactory(() => UpdateTrainedCards(repository: sl()));
  sl.registerFactory(() => GetFileByMetaUseCase(fileRepository: sl()));
  //blocs
  sl.registerFactory(() => AuthBloc(sl()));
  sl.registerFactory(() => MDContentCubit(sl()));
  sl.registerFactory(() => LibraryBloc(
        loadUserLibrary: sl(),
      ));
  sl.registerFactory(() => TabBloc());
  sl.registerFactory(() => TrainBloc(updateTrainedCards: sl()));
}
