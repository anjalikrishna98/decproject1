import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: Bottom_Sheet_main(),
        );
      }));
}

class Bottom_Sheet_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: const RiveAnimation.asset(
            "assets/animation/rive1.riv",
            fit: BoxFit.cover,
          )),
          Center(
            child: GestureDetector(
                onDoubleTap: () {
                  showSheet(context);
                },
                child: const Text("Click me to show bottom sheet")),
          ),
        ],
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text("Share"),
                ),
                ListTile(
                  leading: Icon(Icons.copy),
                  title: Text("Copy"),
                ),
              ],
            ),
          );
        });
  }
}
