import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'directorysharedpreference.dart';

class profilehome extends StatefulWidget {


  @override
  State<profilehome> createState() => _profilehomeState();
}

class _profilehomeState extends State<profilehome> {

  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    // TODO: implement initState
    userdata();
    super.initState();
  }

  void userdata() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString("username")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("welcome",style:TextStyle(fontSize: 24),),
            ElevatedButton(onPressed: (){
              logindata.setBool("firstlogin",true);
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Loginpagee()));
            }, child:Text("Logout"))
          ],
        ),
      ),
    );
  }

  }