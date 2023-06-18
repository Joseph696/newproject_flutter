import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    home: rive(),
  ));
}

class rive extends StatelessWidget {
  const rive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RiveAnimation.asset(
            "assets/icons/Animation/5160-10364-hey-ho-lets-go.riv",fit: BoxFit.cover,),
      ),
    );
  }
}
