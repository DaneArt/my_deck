import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_deck_constants.dart';

class MyDeckTheme {
  static ThemeData of(BuildContext context) => ThemeData(
        primaryColor: kThemePrimaryColor,
        primaryColorDark: kThemePrimaryColorDark,
        primaryColorLight: kThemePrimaryColorLight,
        accentColor: kThemeAccentColor,
        buttonTheme:
            ButtonThemeData(buttonColor: Colors.white.withOpacity(0.95)),
        iconTheme: IconThemeData(
          color: kThemeTextColor,
        ),
        accentIconTheme: IconThemeData(color: Colors.white),
        primaryIconTheme: IconThemeData(color: Colors.white.withOpacity(0.95)),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(foregroundColor: kThemeAccentColor),
        textTheme: TextTheme(
            subtitle2: TextStyle(color: kThemeTextColor),
            subtitle1: TextStyle(color: kThemeTextColor.withAlpha(120)),
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
                letterSpacing: 1.6, color: Colors.white.withOpacity(0.95))),
      );
}
