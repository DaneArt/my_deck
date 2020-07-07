import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/injection/dependency_injection.dart';
import 'core/meta/my_deck_constants.dart';
import 'core/meta/my_deck_routes.dart';
import 'features/my_deck/presentation/bloc/library/library_bloc.dart';
import 'features/my_deck/presentation/bloc/tab/tab_bloc.dart';
import 'features/my_deck/presentation/pages/home_page.dart';
import 'features/my_deck/presentation/pages/splash_page.dart';
import 'features/sign_in/bloc/sign_in/sign_in_bloc.dart';
import 'features/sign_in/presentation/pages/login_page.dart';
import 'features/sign_in/presentation/pages/profile_page.dart';
import 'features/social/presentation/pages/social_page.dart';
import 'features/train/presentation/bloc/train/train_bloc.dart';
import 'features/train/presentation/pages/training_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

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
      locale: Locale('ru'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'MyDeck',
      theme: ThemeData(
        primaryColor: kThemePrimaryColor,
        primaryColorDark: kThemePrimaryColorDark,
        primaryColorLight: kThemePrimaryColorLight,
        accentColor: kThemeAccentColor,
        buttonTheme:
            ButtonThemeData(buttonColor: Colors.white.withOpacity(0.95)),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.95),
          opacity: 1,
        ),
        primaryIconTheme: IconThemeData(color: Colors.white.withOpacity(0.95)),
        accentIconTheme: IconThemeData(color: kThemeTextColor),
        textTheme: TextTheme(
            subtitle2: TextStyle(color: kThemeTextColor),
            subtitle1: TextStyle(color: kThemeTextColor),
            overline: TextStyle(color: kThemeTextColor),
            headline6: TextStyle(color: kThemeTextColor),
            headline5: TextStyle(color: kThemeTextColor),
            headline4: TextStyle(color: kThemeTextColor),
            headline3: TextStyle(color: kThemeTextColor),
            headline2: TextStyle(color: kThemeTextColor),
            headline1: TextStyle(color: kThemeTextColor),
            caption: TextStyle(color: kThemeTextColor),
            bodyText2: TextStyle(color: kThemeTextColor),
            bodyText1: TextStyle(color: kThemeTextColor),
            button: TextStyle(
                letterSpacing: 1.2, color: Colors.white.withOpacity(0.95))),
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
