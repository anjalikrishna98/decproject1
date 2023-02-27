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
          home: SliverEx1(),
        );
      }));
}

class SliverEx1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Sliver Appbar"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                height: 40,
                color: Colors.white,
                width: double.infinity,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Text Here',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_enhance)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate:SliverChildBuilderDelegate((context, index) {
            return Container(
              height:  400,
              child: const Center(
                child: Text("Child of SliverList"),
              ),
            );
          },childCount:  10)
          ),

        ],
      ),
    );
  }
}