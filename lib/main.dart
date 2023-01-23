import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///BODY AS COLUMN/MULTICHILD WIDGET
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            // Icon(
            //   Icons.account_circle,
            //   size: 30,color: Colors.cyan,
            // ),
            Image(image: AssetImage("assets/icons/homeicon.png"),height: 80,width: 80,),
            Text('MY APPLICATION',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
            ),
          ],
        ),
      ),

      ///body as text in centre
      // body: Center(
      //   child: Text('MY APPLICATION', style: TextStyle(
      //       fontSize: 30, fontWeight: FontWeight.bold,
      //       color: Colors.black),
      //   ),
      //  ),

      // /// body as icon in centre
      //
      // body: Center(child: Icon (
      //   Icons.contrast_sharp,
      //   size: 80,
      //   color: Colors.pink,
      // ),
      // ),
    );
  }
}
