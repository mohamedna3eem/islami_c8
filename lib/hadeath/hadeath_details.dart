import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8/hadeath/Hadeath_route.dart';
import 'package:islami_c8/hadeath/hadeath.dart';
import 'package:islami_c8/hadeath/hadeath_data_class.dart';


class hadeathDetails extends StatelessWidget {
  static const String routename = "hadeath_details";


  @override

  Widget build(BuildContext context) {
  var arg=ModalRoute.of(context)?.settings.arguments as hadeath_data ;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(arg.title),),
        body: Column(children: [

          Expanded(child:
          Card(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            elevation: 100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Text(arg.contant,style: TextStyle(fontSize: 26),textAlign:TextAlign.center ,),
            ),
          ),

          ),

        ],),
      ),


    );
  }
}
