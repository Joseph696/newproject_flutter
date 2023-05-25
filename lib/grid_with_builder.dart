import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_(),
  ));
}

class grid_ extends StatelessWidget {
  const grid_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 70),
        itemBuilder: (context, index) {
          return const Card(
            child: Center(
              child: Text("HELLO"),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
