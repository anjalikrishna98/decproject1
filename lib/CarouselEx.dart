import 'package:carousel_slider/carousel_slider.dart';
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
          home: CarouselEx(),
        );
      }));
}

class CarouselEx extends StatelessWidget {
  var images = <String>["https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-finish-select-202207-blue?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1662149977576",
    "https://images.hindustantimes.com/tech/img/2022/10/30/960x540/Untitled_design_-_2022-10-30T154805792_1667125176907_1667125177038_1667125177038.png",
    "https://m.media-amazon.com/images/I/61l9ppRIiqL._SL1500_.jpg",
    "https://cdn.shopify.com/s/files/1/1684/4603/products/iphone11_Black_600x.png?v=1654771101",
    "https://images.unsplash.com/photo-1555375771-14b2a63968a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTB8ZW58MHx8MHx8&w=1000&q=80",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1569317002804-ab77bcf1bce4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5zcGxhc2h8ZW58MHx8MHx8&w=1000&q=80")),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1569317002804-ab77bcf1bce4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5zcGxhc2h8ZW58MHx8MHx8&w=1000&q=80")),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1569317002804-ab77bcf1bce4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5zcGxhc2h8ZW58MHx8MHx8&w=1000&q=80")),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1569317002804-ab77bcf1bce4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5zcGxhc2h8ZW58MHx8MHx8&w=1000&q=80")),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
