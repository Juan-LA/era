
import 'dart:ui';


import 'package:a_new_era/design/pickerArea.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'design/ui.dart';
import 'data/data.dart';




void main() {
  runApp(MaterialApp(home: const Startquestai()));
}




class Startquestai extends StatelessWidget {
  const Startquestai({super.key});




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    //var selectedCountry = 0;



    return CupertinoApp(
      title: "Questions" ,
        theme: CupertinoThemeData(
        brightness: Brightness.light,
        ),
      home: CupertinoPageScaffold(


      child:
        Container(
        decoration: homeWallp,
        child: CustomScrollView(

          slivers: [
          CupertinoSliverNavigationBar(
          backgroundColor: Colors.transparent,
          largeTitle: Text("Help Gemini help you", style: TextStyle(color: Colors.white),),

          ),
          SliverFillRemaining(
            child:
            Padding(padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  //Text that explains why the questions are for
                  Padding(padding: const EdgeInsets.only(bottom: 15),
                  child: Text("Answering the following questions will help Gemini create the best suggestions possible, according to area where you live.\nDon't worry. All the information sent to Gemini is generical and no specific to your person.",
                      style: styleBody)),

                  //Selection geographic area
                  Padding(padding: const EdgeInsets.only(bottom: 15),
                    child:
                    Text("Where are you from?", style: styleH1,),
                  ),
                  CupertinoPickerApp(),

                  


                ],
              ),
            ),
          )
          ]
        )
        )
      )
    );

    }


}