import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: Bottmst(),
        );
      }));
}

class Bottmst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: GestureDetector(onDoubleTap: () {
        showSheet(context);
      },
          child: Text("Click me to show bottom sheet")),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            ListTile(
              leading: Logo(Logos.whatsapp),
              title: Text("Whatsapp"),
            ),
            ListTile(
              leading: Logo(Logos.telegram),
              title: Text("Telegram"),
            ),
            ListTile(
              leading: Logo(Logos.gmail),
              title: Text("Gmail"),
            ),
          ],
        ),
      );
    });
  }
}