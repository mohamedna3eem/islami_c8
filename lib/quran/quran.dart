import 'package:flutter/material.dart';
import 'package:islami_c8/quran/VerseName.dart';
import 'package:islami_c8/quran/suradetails.dart';
class quran extends StatelessWidget {
  List<String>vesename=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {


    return Column(
          children: [
            Image.asset('assets/images/Screenshot (1).png' ,alignment: Alignment.center,),
            Container(
              color: Theme.of(context).primaryColor,
              height: 2,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 1),
            ),
            Text("verse name" ,
                style: TextStyle(fontSize: 25) ),
            Container(
              color: Theme.of(context).primaryColor,
              height: 2,
              width: double.infinity,
              margin: EdgeInsets.only(top: 1),
            ),

            Expanded(child: ListView.separated(itemBuilder:
            (buildcontext,index){
              return  Versename(vesename[index],index);

              },

      separatorBuilder:(buildcontext,index){
              return  Container(
                color: Theme.of(context).primaryColor,
                height: 1,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 25),
              );
      } , itemCount:vesename.length))
          ],
      );

  }
}
