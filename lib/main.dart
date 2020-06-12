import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'core/injection/dependency_injection.dart';
import 'core/meta/my_deck_routes.dart';
import 'features/my_deck/presentation/bloc/library/library_bloc.dart';
import 'features/my_deck/presentation/bloc/tab/tab_bloc.dart';
import 'features/sign_in/presentation/pages/profile_page.dart';
import 'features/my_deck/presentation/pages/splash_page.dart';
import 'features/my_deck/presentation/pages/home_page.dart';
import 'features/social/presentation/pages/social_page.dart';
import 'features/train/presentation/pages/training_page.dart';
import 'features/sign_in/bloc/sign_in/sign_in_bloc.dart';
import 'features/sign_in/presentation/pages/login_page.dart';
import 'features/train/presentation/bloc/train/train_bloc.dart';

class App {
  static SharedPreferences localStorage;

  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyDeckApp());
}

class MyDeckApp extends StatelessWidget {
  const MyDeckApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDeck',
      theme: ThemeData(
        primaryColor: Color(0xFF00e5ff),
        primaryColorDark: Color(0xFF00b8d4),
        primaryColorLight: Color(0xFF84ffff),
        accentColor: Color(0xFFFFC107),
        buttonTheme: ButtonThemeData(buttonColor: Colors.white.withOpacity(0.95)),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.95),
          opacity: 1,
        ),
        primaryIconTheme: IconThemeData(color: Colors.white.withOpacity(0.95)),
        accentIconTheme: IconThemeData(color: Color(0xbf002338)),
        textTheme: TextTheme(
          subtitle2: TextStyle(color: Color(0xbf002338)),
          subtitle1: TextStyle(color: Color(0xbf002338)),
          overline: TextStyle(color: Color(0xbf002338)),
          headline6: TextStyle(color: Color(0xbf002338)),
          headline5: TextStyle(color: Color(0xbf002338)),
          headline4: TextStyle(color: Color(0xbf002338)),
          headline3: TextStyle(color: Color(0xbf002338)),
          headline2: TextStyle(color: Color(0xbf002338)),
          headline1: TextStyle(color: Color(0xbf002338)),
          caption: TextStyle(color: Color(0xbf002338)),
          bodyText2: TextStyle(color: Color(0xbf002338)),
            bodyText1: TextStyle(color: Color(0xbf002338)),
            button: TextStyle(letterSpacing: 1.2, color: Colors.white.withOpacity(0.95))),
      ),
      color: Theme.of(context).primaryColor,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentIconTheme: IconThemeData(color: Colors.white.withOpacity(0.95)),
          primaryColor: Color(0xFF121212),
          accentColor: Color(0xFFFFC107)),
      routes: {
        MyDeckRoutes.initial: (context) => SplashPage(),
        MyDeckRoutes.profile: (context) => ProfilePage(),
        MyDeckRoutes.login: (context) {
          return BlocProvider<SignInBloc>(
              create: (context) => sl.get<SignInBloc>(), child: LoginPage());
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
