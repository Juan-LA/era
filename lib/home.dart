import 'dart:ui';
import 'package:flutter/material.dart';

import 'design/ui.dart';






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;

    return MaterialApp(
        title: 'Home Page',
        theme: ThemeData(),
        home: Container(
          decoration: homeWallp,
          child:

          Scaffold(

            backgroundColor: Colors.blue,
            body: Container(
              decoration: homeWallp,
              width: widthScreen,
              child:
              Align(alignment: Alignment.topLeft,
              child: Padding(padding: const EdgeInsets.only(top: 0, left: 0),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ///Title
                    Container(
                      //color: Colors.red ,
                      width: widthScreen,
                      child: Text("Home page", style: styleTitle,) ,
                      padding: const EdgeInsets.only(left: 15, top: 30),

                    ),
                    ///Quick actions section
                    Container(
                      //color: Colors.yellow ,
                      width: widthScreen,
                      child: Column(
                        children: [
                          //Subtitle Quick actions
                          Text("Quick actions", style: styleH1,),
                          //Carrousel
                          Text("Carrousel")
                        ],
                      ),
                    ),
                    ///Body with tiles
                    Container(
                      color: Colors.green ,
                      child: Text("Body with tiles"),
                    )







                  ],
                ),)


              )
          ),



        )
    )
    );
  }
}
