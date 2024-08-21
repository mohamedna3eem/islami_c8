 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c8/quran/quran.dart';
import 'package:islami_c8/radio/soura.dart';
import 'package:islami_c8/sebha/sebha.dart';
import 'package:islami_c8/theaming/theame.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'hadeath/hadeath.dart';

class homescreen extends StatefulWidget{
 static const String routename ="homescreen";

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(theame.thememood==ThemeMode.light?
            "assets/images/bg3.png":"assets/images/darkbackground.png",),
 fit: BoxFit.fill         ),
        ),

        child: Scaffold(
          appBar: AppBar(title: Text(AppLocalizations.of(context).islami,style: TextStyle(color: Colors.white) )),
          backgroundColor: Colors.transparent,
          bottomNavigationBar:
          BottomNavigationBar(
            currentIndex: index,
            onTap: (parmeter) {
              index = parmeter;
              setState(() {
              });
            },
            items: [

              BottomNavigationBarItem(
    backgroundColor: Theme.of(context).primaryColor ,
    icon: ImageIcon (AssetImage('assets/images/quran.png') ),
                  label: AppLocalizations.of(context).quran),
              BottomNavigationBarItem(    backgroundColor: Theme.of(context).primaryColor ,
                  icon: ImageIcon(AssetImage('assets/images/quran2.png')),
                  label: AppLocalizations.of(context).hadeath),
              BottomNavigationBarItem(    backgroundColor: Theme.of(context).primaryColor ,
       icon: ImageIcon(AssetImage('assets/images/sebha.png'))
                  ,label: AppLocalizations.of(context).sebha),
              BottomNavigationBarItem(    backgroundColor: Theme.of(context).primaryColor ,
                  icon: ImageIcon(AssetImage('assets/images/radio.png'))
                  ,label: AppLocalizations.of(context).radio),








 ],),

body: tabs[index],

        ),

    );
  }
List<Widget>tabs=[
  quran(),
  hadeath(),
  sebha(),
  radio(),
];}