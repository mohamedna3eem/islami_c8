 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:islami_c8/quran/suradetails.dart';

class Versename extends StatelessWidget{
  String title;
  int index;
  Versename(this.title,this.index);
  @override
  Widget build(BuildContext context) {

    return InkWell(  onTap: (){
      Navigator.pushNamed(context, SuraDetails.routename,
        arguments: SuraDetailsARG(title, index),
      );
    },
      child: Container(
        alignment: Alignment.center,
        child:Text(title,style: Theme.of(context).textTheme.bodyText1,) ,
      ),
    );
  }
}





