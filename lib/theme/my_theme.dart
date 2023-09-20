import 'package:flutter/material.dart';

ThemeData myProjectTheme = ThemeData(
  primarySwatch: Colors.lightBlue,
  scaffoldBackgroundColor: Colors.white,
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(backgroundColor: Colors.black26)),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue)),
  fontFamily: "Barlow",
  textTheme: TextTheme(
    titleLarge: const TextStyle(
        fontSize: 36.0, color: Colors.black54, fontWeight: FontWeight.w800),
    displayMedium: const TextStyle(
        fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(
        fontSize: 18.0, color: Colors.grey[900], fontWeight: FontWeight.w600),
  ),
);
