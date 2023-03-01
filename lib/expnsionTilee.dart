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
          home: ExpansnTilee(),
        );
      }));
}

class ExpansnTilee extends StatelessWidget {
  List colors = [
    Colors.red,
    Colors.white,
    Colors.green,
    Colors.blue,
    Colors.cyan
  ];
  List datas = ["Red", "green", "blue", "Red", "Red"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXPANSION TILE"),
      ),
      body: ExpansionTile(
        title: const Text("Colors"),
        subtitle: const Text("List of Colors"),
        children: List.generate(
            5,
            (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: colors[index],
                  ),
                  title: Text(datas[index]),
                )),
      ),
    );
  }
}
