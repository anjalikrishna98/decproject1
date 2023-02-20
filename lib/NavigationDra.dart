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
          home: Drawerr(),
        );
      }));
}

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor:Colors.pink ),
        child: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lime),
                accountName: Text("Anjali Krishna"),
                accountEmail: Text("abc@hmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1556103255-4443dbae8e5a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym95JTIwd2l0aCUyMGhvb2RpZSUyMGFuZCUyMGNhbWVyYXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1556103255-4443dbae8e5a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym95JTIwd2l0aCUyMGhvb2RpZSUyMGFuZCUyMGNhbWVyYXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.cabin),
                title: Text("search"),
              ),
              ListTile(
                leading: Icon(Icons.cabin),
                title: Text("search"),
              ),
              ListTile(
                leading: Icon(Icons.cabin),
                title: Text("search"),
              ),
              ListTile(
                leading: Icon(Icons.cabin),
                title: Text("search"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
