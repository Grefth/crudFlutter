import 'package:flutter/material.dart';



//**
//Si mantengo el estado con esto y cambio  de acuerdo al tema de la app entonces podre usar el tema de 
//de acuerdo al del  estado */
class AppTheme{
  

  static const Color primaryLight = Colors.purple;
  static const Color primaryDark  = Colors.blueGrey;


  //ESTE COLOR SE MANEJA DE ACUERDO AL ESTADO DE LA APP 
  static const Color appColor     = Color.fromARGB(255, 0, 112, 127);
  
  
  //*
  // CONFIGURACION DEL TEMA LIGHT

  static final ThemeData lightTheme = ThemeData.light().copyWith(        
        //Color primario
        primaryColor: primaryLight,
         
        appBarTheme: const AppBarTheme(
          color: appColor,
          elevation: 0
        ),

        //TEXT BUTTON
        textButtonTheme:TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: appColor),
        ),

        //ELVATED BUTTON
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: appColor)
        ),

        //TEXTFILE
        

      );


  //*
  // CONFIGURACION DEL TEMA DARK

  static final ThemeData darkTheme = ThemeData.light().copyWith(        
        //Color primario
        primaryColor: appColor,
        appBarTheme: const AppBarTheme(
          color: appColor,
          elevation: 0
        ),

        //TEXT BUTTON
        textButtonTheme:TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: appColor),
        )
      );
}