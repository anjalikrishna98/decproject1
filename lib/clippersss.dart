import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: Cliprss(),
        );
      }));
}

class Cliprss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clipper"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRect(
                child: Container(
                  child: const Align(
                      widthFactor: 0.7,
                      heightFactor: 0.8,
                      alignment: Alignment.center,
                      child: Image(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/1300384615/photo/string-light-bulbs-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=oOP8uhg5T3y9Zw-jjzQnLwpJ2qeq6H_SdhdNP-iYsPM="))),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(800),
                child: const Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1495615080073-6b89c9839ce0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3F1YXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80")),
              ),
              const ClipOval(
                child: Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV3JTIweW9yayUyMHRpbWVzJTIwc3F1YXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80")),
              ),
               ClipPath(
                clipper: WaveClipperTwo(flip: true,reverse: true),
                child: const Image(
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1138008438/photo/abstract-3d-black-cube-wall-background.jpg?b=1&s=170667a&w=0&k=20&c=tW0TnEMC54yyjeBJyOse9RNi0YF-It9JPkP9VRpHE04=")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
