import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c8/home%20screen.dart';
import 'package:islami_c8/theaming/theame.dart';

class splashscreen extends StatelessWidget {
static const String routename ="splash";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),
      (){
      Navigator.pushReplacementNamed(context, homescreen.routename );
    });
    return Scaffold(
      body: Container(
        child:
        Image.asset(
          theame.thememood==ThemeMode.light?
          "assets/images/splash.png":"assets/images/Group 8.png",
        fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),

    );
  }
}
