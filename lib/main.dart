import 'package:flutter/material.dart';
import 'package:islami_c8/home%20screen.dart';
import 'package:islami_c8/quran/suradetails.dart';
import 'package:islami_c8/splach%20screan.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: splashscreen.routename,
      theme: ThemeData(
        cardColor: Colors.white,
          primaryColor: Color(0xFFB7935F),
          scaffoldBackgroundColor: Colors.transparent,
            bottomNavigationBarTheme:BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
            ) ,
          appBarTheme:AppBarTheme(
              iconTheme:IconThemeData(color: Colors.black) ,
              color: Colors.transparent, elevation: 0,
      centerTitle:true ,
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 32
        )
      ) ),


      routes: {
        homescreen.routename:(buildContext)=>homescreen(),
        splashscreen.routename:(buildContext)=>splashscreen(),
        SuraDetails.routename:(buildContext)=>SuraDetails(),
      },


    );

  }
}