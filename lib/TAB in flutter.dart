import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Call Screen.dart';
import 'Chat Screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xFF00695C),)
          ),
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: TabPreview(),
        );
      }));
}

class TabPreview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions:  [
            Icon(Icons.camera_enhance),
            SizedBox(width: 20),
            Icon(Icons.search),
            SizedBox(width: 20),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text('New Broadcast')),
                PopupMenuItem(child: Text('Linked Device')),
                PopupMenuItem(child: Text('Starred Message')),
                PopupMenuItem(child: Text('Payments')),
                PopupMenuItem(child: Text('Settings')),
              ];
            })
          ],
          bottom: const TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.green,

              tabs: [
            SizedBox(child: Tab(icon: Icon(Icons.people))),
            SizedBox(child: Tab(text: "Chats")),
            SizedBox(child: Tab(text: "Status")),
            SizedBox(child: Tab(text: "Calls",)),
          ]),
          ),
        body:  TabBarView(children: [
          Center(child: Text("Communitty"),),
          ChatScreen(),
          Center(child: Text("Status"),),
          Callscreen(),
        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message),),
      ),
    );
  }
}