import 'dart:async';

import 'package:decproject1/second.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///BODY AS COLUMN/MULTICHILD WIDGET
      body: Container(
        // color: Colors.cyan,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/homebackground.jpg"),
            // image: NetworkImage(
            //     "https://images.unsplash.com/photo-1561016444-14f747499547?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JlZW4lMjBjb2xvcnxlbnwwfHwwfHw%3D&w=1000&q=80"
            // ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Icon(
              //   Icons.account_circle,
              //   size: 30,color: Colors.cyan,
              // ),
              ///adding image as asset image
              Image(
                image: AssetImage("assets/icons/homeicon.png"),
                height: 200,
                width: 200,
              ),

              /// adding image as network image
              // Image(
              //   image: NetworkImage(
              //       "https://burst.shopifycdn.com/photos/sunlight-peeks-through-autumn-trees.jpg?width=1850&format=pjpg&exif=1&iptc=1"),
              //   height: 150,
              //   width: 150,
              // ),
              Text(
                'MY HOME',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ],
          ),
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
