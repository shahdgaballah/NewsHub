import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData getDarkMode()=>ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('#1B2529'),
    titleSpacing: 20.0,
    titleTextStyle: TextStyle(
       fontSize: 30.0,
      color: Colors.white,

    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: HexColor('#1B2529'),
      statusBarIconBrightness: Brightness.light
    ),
  ),
  scaffoldBackgroundColor: HexColor('#1B2529'),
  iconTheme: IconThemeData(
    color: Colors.white,
    size: 20.0,
  ),

  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),

    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),

    bodyLarge: TextStyle(
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: HexColor('#1B2529'),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
  ),

  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Colors.deepOrange,
  ),

);

ThemeData getLightMode()=>ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    titleSpacing: 20.0,
    titleTextStyle: TextStyle(
      fontSize: 30.0,
      color: Colors.black,

    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  iconTheme: IconThemeData(
    color: Colors.black,
    size: 20.0,
  ),

  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),

    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),

    bodyLarge: TextStyle(
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: HexColor('#1B2529'),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
  ),

  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Colors.deepOrange,
  ),

);