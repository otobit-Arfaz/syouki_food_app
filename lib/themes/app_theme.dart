import 'package:flutter/material.dart';

class AppTheme {
  //spaces
  static const double cardPadding = 24;
  static const double elementSpacing = cardPadding * 0.5;
  static const double bottomNavBarHeight = 64;
  static const Duration animationDuration = Duration(milliseconds: 300);
  static BorderRadius cardRadius = BorderRadius.circular(14);
  static const double iconSize = cardPadding;

  static const Color blackLight = Color(0xFF292031);

  static const double buttonHeight = 50;
  static Size size(BuildContext context) => MediaQuery.of(context).size;

  //colors
  static const Color black = Color(0xFF121016);
  static const Color orange = Color(0xFFFFBD69);
  static const Color red = Color(0xFFFF6363);
  static const Color white = Color(0xFFFFFFFF);
  static const Color purple = Color(0xFF543864);
  static const Color darkBlue = Color(0xFF202040);
  static const Color grey = Color(0xFF636363);
  static const Color darkBlueLight = Color(0xFF382843);


  //Text theme
  static TextTheme textTheme = const TextTheme(
    headline1: TextStyle(
      fontFamily: 'ArimaMadurai',
      fontSize: 38.4,
      letterSpacing: -1.0,
      color: orange,
      fontWeight: FontWeight.w400,
    ),
    headline2: TextStyle(
      fontFamily: 'ArimaMadurai',
      fontSize: 27.2,
      letterSpacing: -0.25,
      color: white,
      fontWeight: FontWeight.w400,
    ),
    headline3: TextStyle(
      fontFamily: 'ArimaMadurai',
      fontSize: 21.2,
      letterSpacing: 0,
      color: white,
      fontWeight: FontWeight.w600,
    ),
    headline4: TextStyle(
      fontFamily: 'ArimaMadurai',
      fontSize: 20.4,
      letterSpacing: 0,
      color: white,
      fontWeight: FontWeight.w400,
    ),
    headline5: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 18.0,
      letterSpacing: 0,
      color: white,
      fontWeight: FontWeight.w600,
    ),
    headline6: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 17.0,
      letterSpacing: 0.25,
      color: white,
      fontWeight: FontWeight.w400,
    ),
    subtitle1: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 15.3,
      letterSpacing: 0.15,
      color: white,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 11.3,
      letterSpacing: 0.1,
      color: white,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 13.6,
      letterSpacing: 0.5,
      color: white,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 11.9,
      letterSpacing: 0.25,
      color: white,
      fontWeight: FontWeight.w400,
    ),
    caption: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 10.8,
      letterSpacing: 0.4,
      color: white,
      fontWeight: FontWeight.w500,
    ),
    button: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 18.0,
      letterSpacing: 0.60,
      color: white,
      fontWeight: FontWeight.w500,
    ),
    overline: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: 8.0,
      letterSpacing: 0.1,
      color: white,
      fontWeight: FontWeight.w400,
    ),
  );
  static ThemeData theme = ThemeData(
      backgroundColor: black,
      scaffoldBackgroundColor: black,
      primaryColor: red,
      hintColor: white,
      indicatorColor: red,
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(red),
        splashRadius: 24,
      ),
      iconTheme: const IconThemeData(color: grey),
      splashColor: red.withOpacity(.4),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: black,
          filled: true,
          border: OutlineInputBorder(borderRadius: cardRadius)
      ),
      primaryIconTheme : const IconThemeData(
      color: white,
    ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      unselectedWidgetColor: white,
    textTheme: textTheme,
  );
}
