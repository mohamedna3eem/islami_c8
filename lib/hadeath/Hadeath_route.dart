import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c8/hadeath/hadeath.dart';
import 'package:islami_c8/hadeath/hadeath_data_class.dart';
import 'package:islami_c8/hadeath/hadeath_details.dart';

class Hadeath_Contant extends StatelessWidget {
hadeath_data hadeath1;

Hadeath_Contant(this.hadeath1);



  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context, hadeathDetails.routename,
            arguments:hadeath1
        );
      },
      child: Container(
alignment: Alignment.center,
        child: Text(
          hadeath1.title,
          style: Theme.of(context).textTheme.bodyText1,
        ),


      ),
    );
  }
}
