import 'package:device_preview/device_preview.dart';
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
          home: FittedBoxx(),
        );
      }));
}

class FittedBoxx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FITTED BOX"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: const Text(
                      "Understand  With Fitted Box",
                      style: TextStyle(fontSize: 20, color: Colors.cyan),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: const Image(
                        image: NetworkImage(
                            "https://plus.unsplash.com/premium_photo-1668724079336-a4976d93ac33?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80")),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
