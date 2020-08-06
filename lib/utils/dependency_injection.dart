import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mydeck/blocs/library/library_bloc.dart';
import 'package:mydeck/blocs/sign_in/login_bloc.dart';
import 'package:mydeck/blocs/tab/tab_bloc.dart';
import 'package:mydeck/blocs/train/train_bloc.dart';
import 'package:mydeck/services/datasources/file_local_datasource.dart';
import 'package:mydeck/services/datasources/file_network_datasource.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/get_file_by_meta_usecase.dart';
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

final sl = GetIt.I;

void setUp() {
  //RestApi
  sl.registerFactory(
    () => Dio(
      BaseOptions(
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${UserConfig.accessToken}'
        },
        baseUrl: 'http://mydeck-001-site1.dtempurl.com/mydeckapi',
      ),
    )..interceptors.add(TokenInterceptor(
        accessTokenValidator: sl(),
        userDataSource: sl(),
      )),
  );
  sl.registerFactory(() => DataConnectionChecker());
  sl.registerFactory<IAuthFacade>(() => AuthFacadeImpl(sl()));
  sl.registerFactory<NetworkConnection>(() => NetworkConnectionImpl(sl()));
  sl.registerFactory(() => GoogleSignIn());

  //data sources
  sl.registerLazySingleton<FileNetworkDataSource>(
      () => FakeFileNetworkDataSource());
  sl.registerLazySingleton<FileLocalDataSource>(
      () => FileLocalDataSourceImpl());
  sl.registerLazySingleton<DeckNetworkDataSource>(
      () => DeckNetworkDataSourceImpl(
            client: sl(),
          ));
  sl.registerLazySingleton<UserNetworkDataSource>(
      () => UserNetworkDataSourceImpl());
  //repository
  sl.registerLazySingleton<DeckRepository>(() => FakeDeckRepository(sl()));
  sl.registerLazySingleton<FileRepository>(
      () => FileRepositoryImpl(sl(), sl(), sl()));

  //use cases
  sl.registerFactory(() => UploadOnlineDeckUsecase(myDeckRepository: sl()));
  sl.registerFactory(() => GoogleSignInUsecase(sl(), sl(), sl()));
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
  sl.registerFactory(() => LoginBloc(sl()));

  sl.registerFactory(() => LibraryBloc(
        loadUserLibrary: sl(),
      ));
  sl.registerFactory(() => TabBloc());
  sl.registerFactory(() => TrainBloc(updateTrainedCards: sl()));
  //helpers
  sl.registerFactory(() => AccessTokenValidator());
}
