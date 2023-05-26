import 'dart:ffi';

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: expanex(),
  ));
}



class expanex extends StatelessWidget {
  const expanex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.lime,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi"),
            Icon(Icons.abc_sharp,size: 100,),
            Expanded(child: Image.asset("assets/icons/logooo.png",fit: BoxFit.cover,))
          ],
        ),
      ),
    );
  }
}