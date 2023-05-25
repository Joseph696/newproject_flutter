import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_custom(),
  ));
}

class grid_custom extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.yellow,
    Colors.purple,
  ];

  //const grid_custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          childrenDelegate: SliverChildListDelegate(List.generate(
              10,
              (index) => Card(
                    color: colors[index],
                    child: Center(child: Text("hello")),
                  )))),
    );
  }
}
