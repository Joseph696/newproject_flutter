import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject_flutter/main.dart';
import 'myhomepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: statefullogin(),
  ));
}

class statefullogin extends StatefulWidget {
  const statefullogin({super.key});

  @override
  State<statefullogin> createState() => _statefulloginState();
}

class _statefulloginState extends State<statefullogin> {
  var formkey = GlobalKey<FormState>();
  bool showpassd = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login stateful"),
        ),
        body: Form(
            key: formkey,
            child: Column(
              children: [
                Text("LoginPage"),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email ID",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  validator: (usname) {
                    if (usname!.isEmpty ||
                        !usname.contains('@') ||
                        usname.length < 6) {
                      return "input a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: showpassd,
                    decoration:  InputDecoration(
                        hintText: "password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpassd) {
                                  showpassd = false;
                                } else {
                                  showpassd = true;
                                }
                              });
                            },
                            icon: Icon(showpassd == true
                                ? Icons.visibility_off
                                : Icons.visibility))),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 8) {
                        return "Not a valid password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomepage()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Error try again",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            //timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    child: Text("Login here")),
                TextButton(onPressed: () {}, child: Text("Sign up here"))
              ],
            )));
  }
}
