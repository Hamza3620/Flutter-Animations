import 'package:flutter/material.dart';

class TransformationsPage extends StatefulWidget {
  const TransformationsPage({super.key, required this.title});
  final String title;
  @override
  State<TransformationsPage> createState() => _TransformationsPageState();
}

class _TransformationsPageState extends State<TransformationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
                angle: -90,
                child: Container(
                  color: Colors.green,
                  width: 150,
                  height: 150,
                  child: Center(child: Text("Example 1: Rotate")),
                )),
            Transform.scale(
                scale: 0.5,
                child: Container(
                  color: Colors.green,
                  width: 150,
                  height: 150,
                  child: Center(child: Text("Example 2: Scale")),
                )),
            Transform.translate(
                offset: const Offset(10, 10),
                child: Container(
                  color: Colors.green,
                  width: 150,
                  height: 150,
                  child: Center(child: Text("Example 3: Translate")),
                ))
          ],
        ),
      ),
    );
  }
}
