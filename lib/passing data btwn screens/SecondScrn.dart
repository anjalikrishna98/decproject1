import 'package:decproject1/passing%20data%20btwn%20screens/dummy_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments; //id from previous page
    final product =
        dummyProducts.firstWhere((element) => element["id"] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Product"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.network("${product["image"]}"),
            Text("${product["name"]}"),
            Text("${product["price"]}"),
            Text("${product["id"]}"),
            Text("${product["rating"]}"),
          ],
        ),
      ),
    );
  }
}
