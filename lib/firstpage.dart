import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
   runApp(MaterialApp(
    
    //DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) =>
  //         MaterialApp(useInheritedMediaQuery: true, 
          home: Firstpage()));
  // Wrap your app
}

class Firstpage extends StatelessWidget {
  //ui create only after excecution of this function

  @override
  Widget build(BuildContext context) {
    //widget tree, build apps
    return Scaffold(
    body: Container(

       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
        Colors.purple,
        Colors.pink,
        Colors.yellow,
        Colors.amber,
        Colors.lime,
        Colors.blueAccent,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
        //color: Colors.red,
        // image: DecorationImage(
        //    fit: BoxFit.cover,
        //   image: NetworkImage("https://images.unsplash.com/photo-1593950315186-76a92975b60c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"))
        
       ),
      // color: Colors.lime,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset("assets/icons/ic_launcher.png"),
            Text("Redesign",
              style: GoogleFonts.gruppo(
                color: Color.fromARGB(255, 250, 246, 246),
                fontSize: 28,
                fontWeight: FontWeight.bold
    
              ),
              // style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
               
            ),
          ],
        ),
      
      ),
    ),
    );
  }
}
