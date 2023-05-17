import 'package:flutter/material.dart';
import 'package:newproject_flutter/List_with_separater.dart';
import 'package:newproject_flutter/logintest.dart';
import 'package:newproject_flutter/whatsapp/whatsappcalllog.dart';
import 'package:newproject_flutter/whatsapp/whatsappchat.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: true,
    home: Whatsapptab(),
  ));
}

class Whatsapptab extends StatelessWidget {
  
  const Whatsapptab({super.key});

  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(length: 4,
    child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("WhatsApp"),
      backgroundColor: Colors.teal,
      
      bottom: TabBar(
        isScrollable: true,
        labelPadding: EdgeInsets.all(1),
        tabs: [
        SizedBox(width: MediaQuery.of(context).size.width*.1,
         child : const Tab( icon: Icon(Icons.people_alt_rounded))),
        SizedBox
        (width: MediaQuery.of(context).size.width*.3,
          child:  Tab(text:("Chats"),)),
        SizedBox(
          width: MediaQuery.of(context).size.width*.3,

          child: Tab(text: ("Status"),)),

        SizedBox(
          width: MediaQuery.of(context).size.width*.3, 
          child: Tab(text: ("Calls"),)),
      ]),),
      body: TabBarView(              
        children: [
        List_with_separated(),
        whatsappchat(),
        loginpage(),
        whatsappcall()
      
      ]),

    ),

    );
  }
}