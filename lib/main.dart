import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'package:mydeck/core/injection/dependency_injection.dart' as di;
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
import 'package:mydeck/features/sign_in/presentation/pages/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/injection/dependency_injection.dart';
import 'core/meta/my_deck_routes.dart';
import 'features/my_deck/presentation/bloc/add_card/add_card_bloc.dart';
import 'features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'features/my_deck/presentation/bloc/add_deck/card_editor.dart';
import 'features/my_deck/presentation/bloc/library/library_bloc.dart';
import 'features/my_deck/presentation/bloc/tab/tab_bloc.dart';
import 'features/my_deck/presentation/bloc/train/train_bloc.dart';
import 'features/my_deck/presentation/pages/add_deck_page.dart';
import 'features/my_deck/presentation/pages/home_page.dart';
import 'features/my_deck/presentation/pages/social_page.dart';
import 'features/my_deck/presentation/pages/training_page.dart';
import 'features/sign_in/bloc/sign_in/sign_in_bloc.dart';
import 'features/sign_in/presentation/pages/login_page.dart';

class App {
  static SharedPreferences localStorage;

  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.setUp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await App.init();
  final isSessionValid = await UserService.isSessionValid;

  runApp(MyDeckApp(
    isSessionValid: isSessionValid,
  ));
}

class MyDeckApp extends StatelessWidget {
  final bool isSessionValid;

  const MyDeckApp({Key key, this.isSessionValid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'MyDeck',
        theme: ThemeData(
          primaryColor: Color(0xFF03A9F4),
          primaryColorDark: Color(0xFF0288D1),
          primaryColorLight: Color(0xFFB3E5FC),
          accentColor: Color(0xFFFFC107),
          buttonTheme: ButtonThemeData(buttonColor: Colors.white),
          iconTheme: IconThemeData(
            color: Colors.white,
            opacity: 1,
          ),
          primaryIconTheme: IconThemeData(color: Colors.white),
          accentIconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
              button: TextStyle(letterSpacing: 1.2, color: Colors.white)),
        ),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            accentIconTheme: IconThemeData(color: Colors.white),
            primaryColor: Color(0xFF121212),
            accentColor: Color(0xFFFFC107)),
        routes: {
          MyDeckRoutes.profile: (context) => ProfilePage(),
          MyDeckRoutes.login: (contaext) {
            if (UserService.currentUser != null &&
                UserService.accessToken != null &&
                UserService.refreshToken != null &&
                isSessionValid) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider<LibraryBloc>(
                    create: (context) => sl.get<LibraryBloc>(),
                  ),
                  BlocProvider<TabBloc>(
                    create: (context) => TabBloc(),
                  ),
                  BlocProvider<TrainBloc>(
                    create: (context) => sl.get<TrainBloc>(),
                  ),
                ],
                child: HomePage(),
              );
            } else {
              return BlocProvider<SignInBloc>(
                  create: (context) => sl.get<SignInBloc>(),
                  child: LoginPage());
            }
          },
          MyDeckRoutes.home: (context) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<LibraryBloc>(
                  create: (context) => sl.get<LibraryBloc>(),
                ),
                BlocProvider<TabBloc>(
                  create: (context) => TabBloc(),
                ),
                BlocProvider<TrainBloc>(
                  create: (context) => sl.get<TrainBloc>(),
                ),
              ],
              child: HomePage(),
            );
          },
          MyDeckRoutes.social: (context) {
            return SocialPage();
          },
          MyDeckRoutes.train: (context) {
            return BlocProvider<TrainBloc>(
              create: (context) => sl.get<TrainBloc>(),
              child: TrainingPage(),
            );
          },
        },

    );
  }
}
