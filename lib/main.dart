import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/theme/my_deck_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'blocs/library/library_bloc.dart';
import 'blocs/sign_in/sign_in_bloc.dart';
import 'blocs/tab/tab_bloc.dart';
import 'blocs/train/train_bloc.dart';
import 'utils/dependency_injection.dart';
import 'theme/my_deck_routes.dart';

import 'screens/home/home_page.dart';
import 'screens/login/login_page.dart';
import 'screens/login/profile_page.dart';
import 'screens/social/social_page.dart';
import 'screens/train/training_page.dart';
import 'utils/dependency_injection.dart' as di;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class App {
  static SharedPreferences localStorage;

  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  di.setUp();
  await App.init();

  runApp(MyDeckApp());
}

class MyDeckApp extends StatelessWidget {
  const MyDeckApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'MyDeck',
      theme: MyDeckTheme.of(context),
      color: Theme.of(context).primaryColor,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentIconTheme: IconThemeData(color: Colors.white.withOpacity(0.95)),
          primaryColor: Color(0xFF121212),
          accentColor: Color(0xFFFFC107)),
      routes: {
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
