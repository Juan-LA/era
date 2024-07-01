
import 'package:a_new_era/design/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

void main(){
  runApp(const CupertinoPickerApp());
}

class CupertinoPickerApp extends StatelessWidget {
  const CupertinoPickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: PickerArea(),
    );
  }


}









//To make the picker variable (with state)
class PickerArea extends StatefulWidget {
  const PickerArea({super.key});

  @override
  State<PickerArea> createState() => _PickerAreaState();


}

class _PickerAreaState extends State<PickerArea>{
  List<String> listElements = [];

  ///Sets the new list of elements
  void setList(List<String> newElements){
    //inizializza listElements
    if (listElements.length != 0) {
      for (int i = listElements.length -1  ; i>=0; i--){
        listElements.remove(i);
      }
    }

    for (int i = 0 ; i < newElements.length ; i++ ){
      listElements.add(newElements[i]);
    }
  }



  int _selectedCountry = 0 ;

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) =>
          Container(
            height: 216,
            padding: const EdgeInsets.only(top: 6.0),
            // The Bottom margin is provided to align the popup above the system navigation bar.
            margin: EdgeInsets.only(
              bottom: MediaQuery
                  .of(context)
                  .viewInsets
                  .bottom,
            ),
            // Provide a background color for the popup.
            color: Colors.transparent,
            // Use a SafeArea widget to avoid system overlaps.
            child: SafeArea(
              top: false,
              child: child,
            ),
          ),
    );
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery
        .of(context)
        .size
        .width;
    var heightScreen = MediaQuery
        .of(context)
        .size
        .height;


    return MaterialApp(
      home: Container(
          child: CupertinoButton(
            color: Colors.white60,
            onPressed: ()=> _showDialog(
              CupertinoPicker(
                itemExtent: 100, //height dialog window
                onSelectedItemChanged: (int selectedArea)
                {
                  setState(() {
                    _selectedCountry = selectedArea;
                  });
                  print(_selectedCountry);
                  setSelectedCountry(_selectedCountry);


                },
                backgroundColor: Colors.transparent,
                children: List<Widget>.generate(areas.length, (int index) {
                  return Center(child: Text(areas[index], style: styleBody,));
                },
                ),

              ),
            ),
            child:
            Text(
              areas[_selectedCountry],
              style: const TextStyle(
                fontSize: 22.0,
                color: Colors.black,
                fontFamily: "Avenir",
              ),
            ),
          ),



      ),
    );


  }




}


