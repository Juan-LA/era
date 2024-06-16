import 'package:a_new_era/design/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';


var actionsTilesTitles = ["Ask AI", "Health plants", "Divide trash"];



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

    return CupertinoApp(
      title: "Home Page",
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
                largeTitle: Text("Let's change the World", style: TextStyle(color: Colors.white),),

              ),
              SliverFillRemaining(

                  child:
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                          //Quick actions subtitle
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                            child: Text("Quick actions", style: styleH1)
                          ),

                          //List with buttons
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 50,

                              child: ListView(

                                scrollDirection: Axis.horizontal,

                                children: [

                                  actionTile(actionsTilesTitles[0]),
                                  actionTile(actionsTilesTitles[1]),
                                  actionTile(actionsTilesTitles[2]),

                                ],
                              ),
                            )
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child:
                              Column(

                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  //Divider
                                  Divider(color: Colors.white,),

                                  //Task title
                                  Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
                                  child: Text("Tasks", style: styleH1)),

                                  //Tasks' tiles
                                  taskTile(context),

                                ],
                              )
                          ),


                          Spacer()
                        ],
                      ),
                    ),

              )
            ],
          ),
        ),
      ),

    );
  }
}