import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.yellow),
    home: cyclologin(),
  ));
}

class cyclologin extends StatelessWidget {
  //const cyclologin({super.key});

  @override
  Widget build(BuildContext context) {
    bool obsecure = true;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.yellow, Colors.purple]),
        ),

        //padding: EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueAccent[250],
                      hintText: "Type your Email",
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueAccent[250],
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
