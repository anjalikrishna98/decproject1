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
          home: StackDemo(),
        );
      }));
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.amberAccent,
              width: 1000,
              height: 1000,
            ),
            Positioned(
              left: 50,
              bottom: 50,
              child: Container(
                color: Colors.blueGrey,
                width: 300,
                height: 300,
              ),
            ),
            const Positioned(
              left: 150,
              top: 50,
              child: Icon(
                Icons.account_circle,
                color: Colors.lightGreen,
                size: 80,
              )
            )
          ],
        ),
      ),
    );
  }
}
