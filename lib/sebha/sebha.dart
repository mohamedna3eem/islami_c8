import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class sebha extends StatefulWidget{

  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  @override
  int index=0;
  int tasbeehcount=0;
  double angle=0;
  List<String>alltasbeh=[
    "سبحان الله",
    "الحمدالله",
    "الله اكبر",
    "لا اله الا الله",
  ];

  Widget build(BuildContext context) {



    double size1=MediaQuery.of(context).size.width;
    double size2=MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
      children:[
          Padding (padding: EdgeInsets.only(
            left: size1 *0.09,

          ),
          child:Image.asset("assets/images/head of seb7a.png")),


             Padding(padding: EdgeInsets.only(top: size2*0.107),
                child: InkWell(
                    onTap: (){
                      increment();
                    },
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset("assets/images/body of seb7a.png")))),

          ]
          ),
          Container(height: 15,),
          Text("عدد التسبيحات",style: TextStyle(fontSize: 26),textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(vertical:15 ,horizontal:10 ),
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color:Color(0XFFC8B396),
                  ),

              child: Text("$tasbeehcount",style: TextStyle(fontSize: 30, ))),
          SizedBox(height: 35,),
          Container(
              padding: EdgeInsets.symmetric(vertical:12 ,horizontal:15 ),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),

              child: Text(alltasbeh[index],style: TextStyle(fontSize: 30, ))),
        ],

      ),
    );
  }

  void increment() {
    angle+= 360/33;
    tasbeehcount++;
    if (tasbeehcount%33==0){
      index++;
    }
    if(index==alltasbeh.length){
      index=0;
      tasbeehcount=0;
    }

    setState(() {

    });
  }


}