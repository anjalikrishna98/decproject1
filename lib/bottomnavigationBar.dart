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
          home: BottomNav(),
        );
      }));
}

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List Screens = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Account'),
    ),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Menu'),
    ),
  ];

int index =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
        child: BottomNavigationBar(
          currentIndex: index,
            selectedItemColor: Colors.cyan,
            backgroundColor: Colors.blue,
            type: BottomNavigationBarType.fixed,
            onTap: (tapped_index){
              setState(() {
                index=tapped_index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Account"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_off_outlined), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            ]),
      ),
      body: Screens[index],
    );
  }
}
