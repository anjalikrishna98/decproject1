import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: LottieAni(),
        );
      }));
}
class LottieAni extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
            Colors.purpleAccent,
            Colors.white10,
            Colors.pinkAccent
          ])
        ),
        child: ListView(
          children: [
            Lottie.asset('assets/animation/cutepanda.json')
          ],
        ),
      ),
    );
  }
}
