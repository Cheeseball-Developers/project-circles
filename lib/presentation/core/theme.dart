import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  TextTheme _defaultTextTheme(TextTheme base) {
    return base.copyWith(
        headline4: const TextStyle(
            color: Colors.black87,
            fontSize: 26.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w400),
        headline6: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500),
        subtitle1: const TextStyle(
            color: Colors.black54,
            fontSize: 16.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600),
        subtitle2: const TextStyle(
            color: Colors.black54,
            fontSize: 14.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600),
        bodyText2: const TextStyle(
            color: Colors.black87, fontSize: 14.0, fontFamily: 'Quicksand'),
        caption: const TextStyle(
            color: Colors.black54,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Quicksand'));
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _defaultTextTheme(base.textTheme),
    primaryColor: Colors.lightBlue,
    accentColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.lightBlue),
    accentIconTheme: const IconThemeData(color: Colors.white),
    buttonColor: Colors.lightBlue,
    backgroundColor: Colors.white,
  );
}

ThemeData darkTheme() {
  TextTheme _defaultTextTheme(TextTheme base) {
    return base.copyWith(
        headline4: const TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w400),
        headline6: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500),
        subtitle1: const TextStyle(
            color: Colors.white70,
            fontSize: 16.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600),
        subtitle2: const TextStyle(
            color: Colors.white54,
            fontSize: 14.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600),
        bodyText2: const TextStyle(
            color: Colors.white70, fontSize: 14.0, fontFamily: 'Quicksand'),
        caption: const TextStyle(
            color: Colors.white54,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Quicksand'));
  }

  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    textTheme: _defaultTextTheme(base.textTheme),
    primaryColor: Colors.black,
    accentColor: Colors.teal,
    scaffoldBackgroundColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.lightBlue),
    accentIconTheme: const IconThemeData(color: Colors.white),
    buttonColor: Colors.teal,
    backgroundColor: Colors.white,
  );
}