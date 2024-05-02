import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c8/home%20screen.dart';

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
        child: Image.asset("assets/images/splash.png",
        fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),

    );
  }
}
