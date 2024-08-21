import 'package:flutter/material.dart';

class theame{

  static const Color lightprimarycolor =Color(0xFFB7935F);
  static const Color darkprimarycolor =Color(0xFF161E35);
  static const Color lightmaintext =Color(0xFF242424);
  static const Color darkmaintext =Color(0xFFFACC1D);
  static const Color darkaccentcolor =Color(0xFFFACC1D);

  static var lightmood=ThemeData(

      cardColor: Colors.white,
      primaryColor: lightprimarycolor,
      accentColor: lightprimarycolor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ) ,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black) ,
          color: Colors.transparent, elevation: 0,
          centerTitle:true ,
          titleTextStyle:TextStyle(color:lightmaintext,fontSize: 32
          ),),
      textTheme: const TextTheme(

        headline3: TextStyle( fontSize: 32, color:lightmaintext, ),//screan title
        headline5: TextStyle(fontSize: 28, color:lightmaintext ),//sub headers
        bodyText1: TextStyle(fontSize: 25, color:lightmaintext ),//body headers
        bodyText2: TextStyle(fontSize: 22, color:lightmaintext ),//body details


      ),
  );
  static var darklmood=ThemeData(
    cardColor: darkprimarycolor,
    primaryColor: darkprimarycolor,
    accentColor: darkaccentcolor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      selectedItemColor:darkaccentcolor,
      unselectedItemColor: Colors.white,
    ) ,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: darkaccentcolor) ,
      color: Colors.transparent, elevation: 0,
      centerTitle:true ,
      titleTextStyle:TextStyle(color:darkprimarycolor,fontSize: 32
      ),),
    textTheme: const TextTheme(

      headline3: TextStyle( fontSize: 32, color:darkaccentcolor),//screan title
      headline5: TextStyle(fontSize: 28, color:Colors.white ),//sub headers
      bodyText1: TextStyle(fontSize: 25, color:Colors.white ),//body headers
      bodyText2: TextStyle(fontSize: 22, color:darkmaintext ),//body details


    ),
  );
  static  ThemeMode thememood= ThemeMode.dark;


}