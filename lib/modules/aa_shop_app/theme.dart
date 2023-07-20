
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(

    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    color: Colors.white,
    elevation: 0.0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
    elevation: 200.0,
  ),
  textTheme: TextTheme(
      headline1:TextStyle(
        fontSize: 14,
        color: Colors.black,
      )
  ),
  fontFamily: 'Jannah',

);
ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: Color(0x85000000),
  appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0x85000000),
      statusBarIconBrightness: Brightness.light,
    ),
    titleTextStyle: TextStyle(
      color: Colors.grey[600],
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color:Colors.grey[600]),
    color: Color(0x85000000),
    elevation: 0.0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    elevation: 200.0,
    unselectedItemColor:  Colors.grey[600],
    backgroundColor: Color(0x85000000),
  ),
  textTheme: TextTheme(
      headline1:TextStyle(
        fontSize: 14,
        color: Colors.white70,
      )
  ),
  fontFamily: 'Jannah',
);