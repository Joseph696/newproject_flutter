import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: lottie1(),
  ));
}

class lottie1 extends StatelessWidget {
  //const lottie1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        child: Lottie.asset("lib/Animation/lf20_Gpt6Y2.json"),
        
      ),
    );
  }
}
