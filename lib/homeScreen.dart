import 'package:a_new_era/design/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Quick actions subtitle
                          Text("Quick actions", style: styleH1,),
                          Spacer()
                        ],
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),

    );
  }
}