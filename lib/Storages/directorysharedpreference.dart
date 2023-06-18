import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'homes.dart';

void main() {
  runApp(MaterialApp(
     home: Loginpagee(),debugShowCheckedModeBanner: false,
  ));
}

class Loginpagee extends StatefulWidget {
  const Loginpagee({super.key});

  @override
  State<Loginpagee> createState() => _LoginpageeState();
}

class _LoginpageeState extends State<Loginpagee> {
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();

  late SharedPreferences preferences;
  late bool newUser;

  @override
  void initState() {
    // TODO: implement initState
    check_useris_alreadyLogin();
    super.initState();
  }
  void check_useris_alreadyLogin() async {
    preferences = await SharedPreferences.getInstance();
    newUser =  preferences.getBool("firstlogin") ?? true; //if prefernces.getbool("firstlogin") == nul then value of new user = true

    if (newUser == false){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> profilehome()));
    }
  }
  void dispose(){
    uname_controller.dispose();
    pass_controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "LoginPage",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                controller: uname_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "UserName"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                controller: pass_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            ElevatedButton(onPressed: (){
              String username = uname_controller.text;
              String password =pass_controller.text;
              if(username != '' && password != ''){
                // saving data to shared preferens
                preferences.setString("username", username);
                preferences.setBool("firstlogin", false);

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>profilehome()));

              }

            }, child:Text("Login"))
          ],
        ),
      ),
    );
  }


}