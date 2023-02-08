import 'package:flutter/material.dart';

class Grid1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 70,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.0),
        children: List.generate(10, (index) {
          return const Card(
            child: Center(
              child: Image(image: AssetImage("assets/icons/homeicon.png")),
            ),
          );
        }),

        // gridDelegate:
        //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        // children: List.generate(10, (index){
        //   return const Card(
        //     child: Image(image: AssetImage("assets/icons/homeicon.png")),
        //   );
        // },)
      ),
    );
  }
}
