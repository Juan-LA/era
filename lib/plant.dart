import 'package:a_new_era/design/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

void main() {
  runApp(const Plant());
}


class Plant extends StatelessWidget {
  const Plant({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Plant name",
      theme: CupertinoThemeData(
        brightness: Brightness.light,
      ),

      home: CupertinoPageScaffold(
        child: Container(
          decoration: plantWallp,

          child:
            CustomScrollView(
              slivers: [
                CupertinoSliverNavigationBar(
                  backgroundColor: Colors.transparent,
                  largeTitle: Text("Plant name", style: TextStyle(color: Colors.white),),

                ),

      SliverFillRemaining(

        child:
        Align(
            alignment: Alignment.centerLeft,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
            )
        )
      )



              ],
            )
        ),
      ),
    );
  }
}