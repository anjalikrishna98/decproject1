import 'package:flutter/material.dart';

class ListwithCustum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return const Card(
          child: Text('Card 1'),
             color: Colors.cyan,
             );
      }),

        //     [const Card(
        //     child: Text('Card 1'),
        //     color: Colors.cyan,
        //   ),
        //   const Card(
        //     child: Text('Card 2'),
        //     color: Colors.redAccent,
        //   ),
        //   const Card(
        //     child: Text('Card 3'),
        //     color: Colors.blue,
        //   ),
        //   const Card(
        //     child: Text('Card 4'),
        //     color: Colors.yellow,
        //   ),
        // ],),

      )
    );
  }
}
