import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SimpleAnimation(),
  ));
}

class SimpleAnimation extends StatefulWidget {
  const SimpleAnimation({super.key});

  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 12, end: 100).animate(controller!)
      ..addListener(
        () {
          setState(
            () {},
          );
        },
      );
  }

  void increaseSize() {
    controller!.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Hello Everyone',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
          ElevatedButton(
              onPressed: () => increaseSize(), child: Text('Increase Size'))
        ],
      ),
    );
  }
}
