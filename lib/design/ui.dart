import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var homeWallp = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.cyan,
        Colors.black,
        Colors.black,
        //Colors.deepPurple,

      ],
    )
);

var styleTitle = TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.w700, fontFamily:
"Avenir");
var styleH1 = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.w700, fontFamily:
"Avenir");
var styleBody = TextStyle(fontSize: 20.0, color: Colors.white, fontFamily:
"Avenir");


//style action tiles
var borderRadius = BorderRadius.all(Radius.circular(50.0));
Widget actionTile(String text){

  CupertinoButton btn = CupertinoButton(
      borderRadius: borderRadius,
      child: Text(text, style: styleBody,),
      onPressed: (){print("Hello");},
      color: Colors.white12,
  );

  Widget tile =  Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: btn
  );



  return tile;
}

