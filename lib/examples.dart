import 'package:flutter/material.dart';
import 'package:hello_world_123/custom_paint_example.dart';
import 'package:hello_world_123/hero_animation.dart';
import 'package:hello_world_123/rive_assets.dart';
import 'package:hello_world_123/rive_sample.dart';
import 'package:hello_world_123/tranformations.dart';

class Examples extends StatefulWidget {
  const Examples({super.key});

  @override
  State<Examples> createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Examples"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const HeroFirstPage(title: 'Hero Animation')));
            }),
            child: const Card(
              elevation: 5,
              child: ListTile(title: Text("Hero Animations")),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const TransformationsPage(title: 'Transformations')));
            }),
            child: const Card(
              elevation: 5,
              child: ListTile(title: Text("Transformations")),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const SimpleAnimation(title: 'Rive from network')));
            }),
            child: const Card(
              elevation: 5,
              child: ListTile(title: Text("Rive from network")),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      RiveSimpleAnimation(title: 'Rive from assets')));
            }),
            child: const Card(
              elevation: 5,
              child: ListTile(title: Text("Rive from assets")),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const CustomPaintExample(title: 'CustomPainter')));
            }),
            child: const Card(
              elevation: 5,
              child: ListTile(title: Text("CustomPainter")),
            ),
          )
        ],
      ),
    );
  }
}
