import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  String? v1, v2;
  int? v3;
  StatelessPage({super.key, this.v1, this. v2, this.v3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(v1!),
      ),
      body: Center(
        child: Text('I am hridhin madiwala $v1 Located in $v2 contact no is $v3',style: const TextStyle(fontSize: 30),),
      ),
      
    );
  }
}
