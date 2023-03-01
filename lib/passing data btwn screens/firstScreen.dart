import 'dart:js';

import 'package:decproject1/passing%20data%20btwn%20screens/SecondScrn.dart';
import 'package:decproject1/passing%20data%20btwn%20screens/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: FirstPage(),
  routes: {
    "Second" : (context)=> SecondScrn(),
  },));
}
class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: dummyProducts.map((product) {
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(product["image"]),),
            title: Text(product["name"]),
            onTap: ()=> goToSecondScrn(context,product["id"]),
          );
        }).toList(),
      ),
    );
  }

 void goToSecondScrn(BuildContext context, productId) {
    Navigator.pushNamed(context, "Second",arguments: productId);
 }
}
