import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8/hadeath/Hadeath_route.dart';
import 'package:islami_c8/hadeath/hadeath_data_class.dart';

class hadeath extends StatefulWidget {
  @override
  State<hadeath> createState() => _hadeathState();
}

class _hadeathState extends State<hadeath> {
List<hadeath_data>ELHadeath=[];
  @override
  Widget build(BuildContext context) {
 if(ELHadeath.isEmpty)
   Readfile();
    return Column(

 children: [
   Expanded(flex: 1,
       child: Image.asset("assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png")),
       Container(
         color: Theme.of(context).primaryColor,
         height: 2,
       ),
       Text("Hadeath",style: TextStyle(fontSize: 29,),),
       Container(
     color: Theme.of(context).primaryColor,
     height: 2,
   ),

 Expanded(
   flex: 3,
   child: Container(
     child:
           ELHadeath.isEmpty?
           Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor),)
           :ListView.separated(
               itemBuilder:(BuildContext, int){
                 return Hadeath_Contant(ELHadeath[int]);

                 },
               separatorBuilder:(BuildContext, int){
                 return Container(height: 2,color: Theme.of(context).primaryColor,);
               } ,
               itemCount:ELHadeath.length )//[[
   ),
 )
 ],
    );
  }

void Readfile()async{
  List<hadeath_data>ELHadeathlist=[];

    String hadeathcontant= await rootBundle.loadString('assets/files/ahadeth .txt');
   List<String>splitedcontant= hadeathcontant.split("#");
    for(int i=0;i<splitedcontant.length;i++){
       String singlehadeathcontant= splitedcontant[i];
      List<String>lines=singlehadeathcontant.trim().split('\n');
       String title=lines[0];
      lines.removeAt(0);
      String contant=lines.join('\n');
       hadeath_data Hadeath = hadeath_data(title,contant);
       ELHadeathlist.add(Hadeath);

    }
  ELHadeath= ELHadeathlist;
    setState(() {});
}

}
