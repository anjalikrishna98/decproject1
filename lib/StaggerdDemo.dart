import 'package:decproject1/MyWidget.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: StaggerdDemo(),
        );
      }));
}

class StaggerdDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: MyCustumWidget(
                    icons: Icons.account_circle,
                    bgcolor: Colors.yellow),
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 5,
                  child: MyCustumWidget(
                      icons: Icons.food_bank_outlined,
                      bgcolor: Colors.grey),),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child:MyCustumWidget(
                      icons: Icons.doorbell_outlined,
                      bgcolor: Colors.yellow),),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: MyCustumWidget(
                      icons: Icons.offline_bolt_outlined,
                      bgcolor: Colors.yellow),),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: MyCustumWidget(
                      icons: Icons.phone,
                      bgcolor: Colors.yellow),),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 5,
                  child: MyCustumWidget(
                      icons: Icons.camera,
                      bgcolor: Colors.yellow),),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: MyCustumWidget(
                      icons: Icons.cabin_outlined,
                      bgcolor: Colors.yellow),)
            ],
          ),
        ),
      ),
    );
  }
}
