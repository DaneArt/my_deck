import 'package:dio/dio.dart';
import 'package:mydeck/features/my_deck/data/datasources/media/entities_separator.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:mydeck/core/network/network_connection.dart';

import 'package:mydeck/features/my_deck/data/datasources/media/my_deck_media_datasource.dart';
import 'package:mydeck/features/my_deck/data/datasources/my_deck_local_datasource.dart';
import 'package:mydeck/features/my_deck/data/datasources/my_deck_network_datasource.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/usecases/add_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/delete_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/get_all_current_user_decks_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/get_decks_for_train_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/load_decks_page_for_category_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/update_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/update_trained_cards.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/tab/tab_bloc.dart';
import 'package:mydeck/features/sign_in/bloc/sign_in/sign_in_bloc.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/sign_in/helpers/auth_facade.dart';
import 'package:mydeck/features/sign_in/usecases/google_signin_usecase.dart';

final sl = GetIt.I;

void setUp() {
  //RestApi

  sl.registerFactory(() => Dio());
  sl.registerFactory(() => DataConnectionChecker());
  sl.registerFactory<IAuthFacade>(() => AuthFacadeImpl(sl()));
  sl.registerFactory<NetworkConnection>(() => NetworkConnectionImpl(sl()));
  sl.registerFactory(() => GoogleSignIn());

  //data sources
  sl.registerLazySingleton<MyDeckLocalDataSource>(
      () => MyDeckLocalDataSourceImpl());
  sl.registerLazySingleton<MyDeckNetworkDataSource>(
      () => MyDeckNetworkDataSourceImpl(client: sl()));
  sl.registerLazySingleton<MyDeckMediaDataSource>(
      () => MyDeckMediaDataSourceImpl());
  //repository
  sl.registerLazySingleton<MyDeckRepository>(() => MyDeckRepositoryImpl(
      entitiesSeparator: sl(),
      localDataSource: sl(),
      networkDataSource: sl(),
      mediaDataSource: sl(),
      networkConnection: sl()));
  //use cases
  sl.registerFactory(() => GoogleSignInUsecase(sl(), sl()));
  sl.registerFactory(() => LoadDecksPageForCategoryUsecase(sl()));
  sl.registerFactory(() => SaveDeckChangesUsecase(sl()));
  sl.registerFactory(() => DeleteDeckUseCase(sl()));
  sl.registerFactory(() => UpdateDeckUsecase(myDeckRepository: sl()));
  sl.registerFactory(() => GetDecksForTrain());
  sl.registerFactory(() => GetAllCurrentUserDecksUsecase(repository: sl()));
  sl.registerFactory(() => AddDeckUseCase(myDeckRepository: sl()));
  sl.registerFactory(() => UpdateTrainedCards(repository: sl()));
  //blocs
  sl.registerFactory(() => SignInBloc(sl()));
  sl.registerFactory(() => AddDeckBloc(
      saveDeckChangesUsecase: sl(),
      deleteDeckUsecase: sl(),
      addDeckUseCase: sl()));
  sl.registerFactory(
      () => LibraryBloc(getDecksForTrain: sl(), allUserDecks: sl()));
  sl.registerFactory(() => TabBloc());
  sl.registerFactory(() => TrainBloc(updateTrainedCards: sl()));
  //helpers
  sl.registerFactory<EntitiesSeparator>(() => EntitiesSeparatorImpl());
}
