import 'package:flutter/material.dart';

class Constants {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.blue, fontSize: 22.0, fontWeight: FontWeight.bold)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
      )),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
            color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
        headline1: TextStyle(
            color: Colors.blue, fontSize: 40.0, fontWeight: FontWeight.w700),
      ));

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        textStyle: const TextStyle(
            color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),
      )),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(
            color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w500),
        headline1: TextStyle(
            color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.w700),
      ));
}
