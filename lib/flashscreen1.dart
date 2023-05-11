import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
import 'package:newproject_flutter/flashpage.dart';
import 'flashpage.dart';

void main() {
  runApp(MaterialApp(
    home: flashscreenone(),
  ));
}

class flashscreenone extends StatefulWidget {
  const flashscreenone({super.key});

  @override
  State<flashscreenone> createState() =>
      _flashscreenoneState(); //to convert myApp immutable to mutable state by using set state create state
}

class _flashscreenoneState extends State<flashscreenone> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => flash1()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[900],
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration
        
        (image: DecorationImage(
          fit: BoxFit.cover
        ,
        
        image: NetworkImage
        ("https://i.pinimg.com/originals/3f/b8/f2/3fb8f203fbbb8d8fdea55004b14ca125.jpg"))),
        
         child: Center(
          
          child: Column(
            
            
            children: [
              SizedBox(),
              Container(
                  child: LottieBuilder.network(
                      "https://assets1.lottiefiles.com/packages/lf20_1pxqjqps.json")),
                      SizedBox(height: 50,),
              Text(
                "Welcome",
                style: TextStyle(color: Colors.white, fontSize: 55),
              )
            ],
          ),
        ),
      ),
    );
  }
}
