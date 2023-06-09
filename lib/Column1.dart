
import 'package:flutter/material.dart';

class Column1 extends StatelessWidget {
  const Column1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            "assets/icons/ic_launcher.png",width: 45),
        Text("30 MINS POLICY")
      ],
    );
  }
}

