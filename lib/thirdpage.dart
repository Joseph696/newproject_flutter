import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject_flutter/secondpage.dart';

void main() {
  runApp(MaterialApp(
    home: flashscreen(),
  ));
}

class flashscreen extends StatefulWidget {
  @override
  State<flashscreen> createState() => _flashscreenState();
}

class _flashscreenState extends State<flashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => loginpage()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange, Colors.purple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/Picsart_23-05-07_15-07-10-916.png",
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 0,
                width: 100,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tivi",
                      style: GoogleFonts.averageSans(
                          fontSize: 50, color: Colors.white),
                    ),
                    Text(
                      "dey",
                      style: GoogleFonts.darkerGrotesque(
                          fontSize: 50, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
