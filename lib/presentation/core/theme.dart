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
            color: Colors.black87,
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
        button: const TextStyle(
            color: Colors.lightBlue, fontSize: 14.0, fontFamily: 'Quicksand'),
        caption: const TextStyle(
            color: Colors.black54,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Quicksand'));
  }

  TextTheme _accentTextTheme(TextTheme base) {
    return base.copyWith(
      bodyText2: const TextStyle(
        color: Colors.white, fontSize: 14.0, fontFamily: 'Quicksand'),
      headline6: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w500),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    indicatorColor: Colors.lightBlue,
    textTheme: _defaultTextTheme(base.textTheme),
    accentTextTheme: _accentTextTheme(base.textTheme),
    primaryColor: Colors.lightBlue,
    accentColor: Colors.white,
    cardColor: Colors.white,
    appBarTheme: AppBarTheme(color: Colors.blue),
    tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white, width: 2.0)))),
    dialogBackgroundColor: Colors.white,
    bottomAppBarColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.blue),
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
        button: const TextStyle(
            color: Colors.white, fontSize: 14.0, fontFamily: 'Quicksand'),
        caption: const TextStyle(
            color: Colors.white54,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Quicksand'));
  }

  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    indicatorColor: Colors.teal,
    textTheme: _defaultTextTheme(base.textTheme),
    primaryColor: Colors.black,
    accentColor: Colors.teal,
    cardColor: Color(0xFF1F2A2A),
    scaffoldBackgroundColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.teal),
    accentIconTheme: const IconThemeData(color: Colors.white),
    buttonColor: Colors.teal,
    backgroundColor: Colors.white,
  );
}
