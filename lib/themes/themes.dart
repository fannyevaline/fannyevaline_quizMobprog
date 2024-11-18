import 'package:flutter/material.dart';

// LightTheme
final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(buttonColor: Colors.blue),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Courier',
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Courier',
      color: Colors.black,
    ),
  ),
);

// DarkTheme
final ThemeData darkTheme = ThemeData(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.grey[850]!,
  buttonTheme: ButtonThemeData(buttonColor: Colors.green),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Courier',
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Courier',
      color: Colors.white,
    ),
  ),
);

// PastelTheme
final ThemeData pastelTheme = ThemeData(
  primaryColor: Colors.pink,
  scaffoldBackgroundColor: Colors.pink[50]!,
  buttonTheme: ButtonThemeData(buttonColor: Colors.pinkAccent),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Courier',
      color: Colors.pink[800],
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Courier',
      color: Colors.pink[800],
    ),
  ),
);
