import 'package:flutter/material.dart';

final mainColor = Color.fromARGB(255, 53, 200, 218);
final secondaryColor = Color.fromARGB(255, 185, 234, 238);

final fontcolor = Colors.white;

final themestyle = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: mainColor,
    titleTextStyle: TextStyle(fontSize: 50),
  ),
  scaffoldBackgroundColor: secondaryColor,
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: mainColor,
    indicatorColor: secondaryColor,
    labelTextStyle: WidgetStatePropertyAll(
      TextStyle(color: fontcolor, fontFamily: 'Somply Charming', fontSize: 15),
    ),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: fontcolor,
      fontSize: 25,
      fontFamily: 'Somply Charming',
    ),
  ),
);
