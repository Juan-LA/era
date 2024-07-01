import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../plant.dart';

///To create gradient wallpapers with black at the bottom
BoxDecoration wallP(Color color){

  var wallpaper = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          color,
          Colors.black,
          Colors.black,
          //Colors.deepPurple,

        ],
      )
  );

  return wallpaper;
}

var homeWallp = wallP(Colors.indigo);
var plantWallp = wallP(Colors.teal);




var styleTitle = TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.w700, fontFamily:
"Avenir");
var styleH1 = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.w700, fontFamily:
"Avenir");
var styleBody = TextStyle(fontSize: 20.0, color: Colors.white60, fontFamily:
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


//Task tile
var rrBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

Widget taskTile(BuildContext context){

  var bR = BorderRadius.all(Radius.circular(20.0));

  return Container(
    //padding: const EdgeInsets.only(top: 10, bottom: 10),
    height: 200,
    width: MediaQuery.of(context).size.width ,
    decoration: ShapeDecoration(
      color: Colors.white12,
      shape: rrBorder,

    ),

    child: CupertinoButton(
      borderRadius: bR,
      color: Colors.white12,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Plant()),
        );
      },
      child: Text("Prova"),
    ),

  );

}

