import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  TextTheme _defaultTextTheme(TextTheme base) {
    return base.copyWith(
      headline2: const TextStyle(
          color: Colors.black54,
          fontSize: 22.0,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w800),
      headline6: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w500),
      subtitle1: const TextStyle(
          color: Colors.black54,
          fontSize: 12.0,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w800),
      bodyText2: const TextStyle(
          color: Colors.black87, fontSize: 14.0, fontFamily: 'Quicksand'),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _defaultTextTheme(base.textTheme),
    //textTheme: Typography().white,
    primaryColor: Colors.lightBlue,
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: Colors.lightBlue,
    accentColor: const Color(0xFFFFF8E1),
    iconTheme: const IconThemeData(color: Colors.white),
    accentIconTheme: const IconThemeData(color: Colors.lightBlue),
    buttonColor: Colors.lightBlue,
    backgroundColor: Colors.white,
  );
}
