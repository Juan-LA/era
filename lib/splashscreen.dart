import 'dart:ui';

import 'package:a_new_era/deprecated/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';


void main(){
  runApp(MaterialApp(home:InitialScreen()));
}

String obtainPhrase(int nPhrase){
  var phrases = ["Be the change\nBe the start of a new era",
    "You will discover how help the Planet",
    "Don't worry!\nGemini will help you"];

  //check frase oltre il numero totale
  if (nPhrase > phrases.length) {
  return "";
  } else {
    return phrases[nPhrase-1];
  }


}

class InitialScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(


        body:
            Container(
                decoration: BoxDecoration(
                      gradient: LinearGradient(
                      begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.black,
                          Colors.black,
                          //Colors.deepPurple,
                          Colors.blue,
                        ],
                      )
                ),
              child:
                  Container(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(),
                      child:
                      FlutterCarousel(
                        options: CarouselOptions(
                          //height: 100.0,
                          showIndicator: true,
                          indicatorMargin: 35,
                          floatingIndicator: true,
                          slideIndicator: CircularWaveSlideIndicator(),
                          height: MediaQuery.of(context).size.height,




                        ),
                        items: [1,2,3].map((i){
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.all(25),
                                  //EdgeInsets.symmetric(horizontal: 20.0),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                  ),
                                  child:

                                  Text(obtainPhrase(i), style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.w700, fontFamily:
                                  "Avenir"),)

                              );
                            },
                          );
                        }
                        ).toList(),





                        )

                          /*
                          Padding(padding: const EdgeInsets.only(left: 10, right: 10), child: Column(children:
                          [
                            Container(
                              color: Colors.red,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.centerLeft,
                              child:
                              Text(
                                "Be the change\nBe the start of a new era",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  fontFamily: "Avenir",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                          ),),
                          Padding(padding: const EdgeInsets.only(left: 10, right: 10), child: Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                child: Text("Questa è", style: TextStyle(color: Colors.white),),
                              ),],),),
                          Padding(padding: const EdgeInsets.only(left: 10, right: 10), child: Column(
                            children: [
                              Container(
                                color: Colors.orange,
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                child: Text("Questa è", style: TextStyle(color: Colors.white),),),],),),
 */
                      ),
                    ),
                  )

            ),
    );
  }
}