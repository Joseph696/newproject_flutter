import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expandex(),
  ));
}

class Expandex extends StatelessWidget {
  const Expandex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              padding: EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 175,
                          width: 175,
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 175,
                        width:175,
                        color: Colors.amber,
                      )
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Container(
                      height: 300,
                      width: 200,
                      color: Colors.brown,
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 300,
                          width: 190,
                          color: Colors.lime,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 300,
                          width: 180,
                          color: Colors.teal,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
