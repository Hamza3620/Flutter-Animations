import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveSimpleAnimation extends StatelessWidget {
  RiveSimpleAnimation({Key? key, required this.title}) : super(key: key);
  final String title;

  final List<String> rive_assets = [
    "light_switch",
    "liquid_download",
    "little_machine",
    "off_road_car",
    "rocket",
    "skills"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: rive_assets.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: RiveAnimation.asset(
                'images/rive/${rive_assets[index]}.riv',
              ),
            ),
          );
        },
      ),
    );
  }
}
