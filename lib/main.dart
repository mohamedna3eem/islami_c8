import 'package:flutter/material.dart';
import 'package:islami_c8/home%20screen.dart';
import 'package:islami_c8/quran/suradetails.dart';
import 'package:islami_c8/splach%20screan.dart';
import 'package:islami_c8/theaming/theame.dart';
import 'hadeath/hadeath_details.dart';
import '';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: splashscreen.routename,
      theme:
            theame.lightmood,
            darkTheme: theame.darklmood,
            themeMode: theame.thememood,



      routes: {
        homescreen.routename:(buildContext)=>homescreen(),
        splashscreen.routename:(buildContext)=>splashscreen(),
        SuraDetails.routename:(buildContext)=>SuraDetails(),
        hadeathDetails.routename:(buildContext)=>hadeathDetails(),

      },


    );

  }
}