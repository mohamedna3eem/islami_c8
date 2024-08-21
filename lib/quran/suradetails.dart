import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theaming/theame.dart';
import 'Verse_style.dart';

class SuraDetails extends StatefulWidget {
static const String routename="soura_details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
List<String>chaptercontent=[];

  @override
  Widget build(BuildContext context) {
  var arg=   ModalRoute.of(context)?.settings.arguments as SuraDetailsARG;
  if(chaptercontent.isEmpty)
    ReadFile(arg.index) ;


  return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage( theame.thememood==ThemeMode.light?
            "assets/images/bg3.png":"assets/images/darkbackground.png",),
            fit: BoxFit.fill         ),
      ),
child: Scaffold(
  body: Column(children: [

       Expanded(child:
      Card(
        margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        elevation: 100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: chaptercontent.isEmpty?
           Center(child: CircularProgressIndicator())
        :ListView.builder(itemBuilder: (buildContext,index){
          return VerseStyle(chaptercontent[index]);

        },
            itemCount:chaptercontent.length),
      ),

      ),

  ],),
  appBar: AppBar(title: Text(arg.title,style: Theme.of(context).textTheme.headline5,),),
),


    );
  }

void ReadFile (int chapterindex)async{

  String text = await rootBundle.loadString('assets/files/${chapterindex+1}.txt');
  print(text);
  chaptercontent=text.split('/n');
  setState(() {

  });
}
}
class SuraDetailsARG {
  String title;

  int index;
  SuraDetailsARG(this.title,this.index);
}
