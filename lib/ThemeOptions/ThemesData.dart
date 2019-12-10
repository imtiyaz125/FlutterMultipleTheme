import 'package:flutter/material.dart';

final ThemeData kLightTheme = _buildLightTheme();

ThemeData _buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor:Colors.deepPurple[900],
    accentColor: Colors.deepPurple[700],
    backgroundColor: Colors.deepPurple[700],
    scaffoldBackgroundColor: Colors.purple[500],
    textTheme: TextTheme(
      headline: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple[900],
          fontSize: 30),
      body1: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24),
      body2: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18),
    ),
  );
}

final ThemeData kDarkTheme = _buildDarkTheme();

ThemeData _buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.red[900],
    accentColor: Colors.red[700],
    canvasColor: Colors.black12,
    backgroundColor: Colors.red,
    scaffoldBackgroundColor: Colors.red[400],
    textTheme: TextTheme(
      headline: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.purple[500],
          fontSize: 30),
      body1: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color:Colors.white,
          fontSize: 24),
      body2: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18),
    ),
  );
}

final ThemeData kAmoledTheme = _buildAmoledTheme();

ThemeData _buildAmoledTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.deepOrange[900],
    accentColor: Colors.deepOrange[700],
    backgroundColor: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.deepOrange[400],
    textTheme: TextTheme(
      headline: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.pink[900],
          fontSize: 30),
      body1: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24),
      body2: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18),
    ),
  );
}

final ThemeData kLightGreenTheme = _buildLightGreenTheme();

ThemeData _buildLightGreenTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Colors.pink[900],
    accentColor: Colors.pink[700],
    backgroundColor: Colors.pink,
    scaffoldBackgroundColor: Colors.pink[400],
    textTheme: TextTheme(
      headline: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange[900],
          fontSize: 30),
      body1: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24),
      body2: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18),
    ),
  );
}

final ThemeData kLBlackTheme = _buildBlackTheme();

ThemeData _buildBlackTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.black,
    accentColor: Colors.black,
    backgroundColor: Colors.grey,
    scaffoldBackgroundColor: Colors.blueGrey,
    textTheme: TextTheme(
      headline: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 30),
      body1: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 24),
      body2: TextStyle(
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18),
    ),
  );
}
