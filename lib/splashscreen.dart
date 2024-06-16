/*import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text("Il mio titolo" , style: TextStyle(fontSize: 40, fontFamily : 'Arial'), ),
          // Puoi cambiare il titolo qui
        ),*/
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
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 15, top: 350),
              child: Column(
                children: [
                  Text(
                    "Be the change\nBe the start of a new era",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                      fontFamily: "Avenir",
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Container(child:
                  Padding(padding: const EdgeInsets.only(bottom: 40),
                  child: ElevatedButton(onPressed: (){print("Hi");},
                    child:Text("Ciao"),
                  ),)
                  )


                ],
              ),
            )



    ),






          /*
          child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Sii il cambiamento.\nSii l'inizio di una nuova era",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Arial",

                ),

              ),
            )
          ],
        ),*/


      );

  }
}
*/