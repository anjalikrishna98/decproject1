import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: BottomConv(),
        );
      }));
}

class BottomConv extends StatefulWidget {  @override
  State<BottomConv> createState() => _BottomConvState();
}

class _BottomConvState extends State<BottomConv> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       bottomNavigationBar: ConvexAppBar(
         items: const [
           TabItem(icon: Icons.home, title: 'Home'),
           TabItem(icon: Icons.map, title: 'Discovery'),
           TabItem(icon: Icons.add, title: 'Add'),
           TabItem(icon: Icons.message, title: 'Message'),
           TabItem(icon: Icons.people, title: 'Profile'),
         ],
         onTap: (int i) => print('click index=$i'),
       )
   );
  }}
