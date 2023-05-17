import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stackx()
  ));
}

class Stackx extends StatelessWidget {
  //const Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.blueAccent,
              height: 75,
              width: 75,
            ),
            Container(
              color: Colors.deepOrange,
              height: 50,
              width: 50,
            ),
            Positioned( top: 20,left: 20,
              child: Container(
                color: Colors.blueGrey,
                height: 25,
                width: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
