import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      //DevicePreview(
      //     enabled: !kReleaseMode,
      //     builder: (context) =>
      //         MaterialApp(useInheritedMediaQuery: true,
      home: loginpage()));
}

class loginpage extends StatelessWidget {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 228, 239, 115),
      body: Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
      
      image: NetworkImage("https://images.unsplash.com/photo-1502989642968-94fbdc9eace4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80"))
    ),
       
        child: Center(
          child: SafeArea(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/302-3026464_png-file-svg-login-member-icon-png.png",
                  height: 100,
                  width: 100,
                ),
                Text("Login Page",
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      color: Color.fromARGB(255, 224, 225, 227),
                    )),
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 79, 189, 225),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 126, 120, 120)),
                      hintText: ("Enter your email..."),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30))),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 184, 228, 240),
                      hintStyle:
                          TextStyle(color:Color.fromARGB(255, 79, 189, 225)),
                      hintText: ("Password"),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                new SizedBox(height: 15.0),
                new Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(onPressed: () {}, child: Text("Login",selectionColor: Colors.blueGrey,)
                  )
                  ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
