import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerseStyle extends StatelessWidget {
String text="";
VerseStyle(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      child: Text(text,
        textAlign: TextAlign.center,
        style:Theme.of(context).textTheme.bodyText2 ,
      ),

    );
  }
}
