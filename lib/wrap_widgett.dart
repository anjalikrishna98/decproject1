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
          home: WrapWidgetEx(),
        );
      }));
}

class WrapWidgetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Wrap(
            children: [
              MyWidget("A"),
              MyWidget("B"),
              MyWidget("C"),
              MyWidget("C"),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String text;

  MyWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 50,
      height: 50,
      color: Colors.yellow,
      child: Center(
        child: Text(text),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ElevatedButton(onPressed: () {}, child: Text(text)),
    );
  }
}

class MyChip extends StatelessWidget {
  final String name;
  MyChip(this.name);
  @override
  Widget build(BuildContext context) {
   return Padding(padding: EdgeInsets.symmetric(horizontal: 5),
     child: Chip(label: Text(name),
     backgroundColor: Colors.deepOrangeAccent,),
   );
  }
}
