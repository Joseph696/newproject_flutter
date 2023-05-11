import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject_flutter/main.dart';
import 'package:newproject_flutter/myhomepage.dart';


void main() {
  runApp(MaterialApp(
      //DevicePreview(
      //     enabled: !kReleaseMode,
      //     builder: (context) =>
      //         MaterialApp(useInheritedMediaQuery: true,
      home: loginpage()));
}

class loginpage extends StatelessWidget {
  String username = "admin";
  String pass = "xyz";
  bool _obsecureText = true;

  TextEditingController uname = TextEditingController();
  TextEditingController passname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[900],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(
                    "https://i.pinimg.com/originals/84/c8/5d/84c85d056d6f33d217eaf74f7113642d.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",
                  style: GoogleFonts.roboto(
                    fontSize: 45,
                    color: Color.fromARGB(255, 253, 252, 252),
                  )),
              Text(
                "Welcome back! Logic with your credentials",
                style: GoogleFonts.roboto(
                    fontSize: 10, color: Color.fromARGB(255, 98, 96, 96)),
              ),
              SizedBox(height :50),
              TextField(
                
                controller: uname,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[100],
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 12, 13, 90)),
                    hintText: ("Enter your email..."),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50))),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: passname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[100],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 12, 13, 90)),
                    hintText: ("Password"),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              new SizedBox(height: 15.0),
              new Padding(
                padding: EdgeInsets.symmetric(vertical: 26.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      primary: Colors.blue,
                      minimumSize: Size(350, 45)),
                  onPressed: () {
                    String email = uname.text.trim();
                    String pwd = passname.text.trim();
                    if (email != "" && pwd != "") {
                      if (username == email && pass == pwd) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomepage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Incorrect username or password")));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Field cannot be empty")));
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      TextButton(onPressed: () {} ,child: Text("Sign Up",style: TextStyle( color: Color.fromARGB(255, 67, 2, 230)),),
                        
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
