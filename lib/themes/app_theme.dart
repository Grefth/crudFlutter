import 'package:flutter/material.dart';

class AppTheme{
  static const Color primaryLight = Colors.blue;
  static const Color primaryDark  = Colors.blueGrey;

  //TEMA LIGHT
  static final ThemeData lightTheme = ThemeData.light().copyWith(        
        //Color primario
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: primaryLight,
          elevation: 0
        ),

        //TEXT BUTTON
        textButtonTheme:TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryLight),
        )
      );


      //TEMA DARK
  static final ThemeData darkTheme = ThemeData.light().copyWith(        
        //Color primario
        primaryColor: primaryDark,
        appBarTheme: const AppBarTheme(
          color: primaryDark,
          elevation: 0
        ),

        //TEXT BUTTON
        textButtonTheme:TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryDark),
        )
      );
}