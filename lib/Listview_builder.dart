import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_view_builder(),
  ));
}

class List_view_builder extends StatelessWidget {
  var names = ["athul", "stinil", "Rahul", "Hridhin", "pranav"];
  var numbers = [14524, 54548, 548845, 4542842, 482428];
  var photo = [
    "assets/icons/ic_launcher.png",
    "assets/icons/302-3026464_png-file-svg-login-member-icon-png.png",
    "assets/icons/8656178_facebook watch_chatting_video_streaming_application_icon.png",
    "assets/icons/Picsart_23-05-07_15-07-10-916.png",
    "assets/icons/logooo.png"
  ];
  var color = [
    Colors.amberAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.orangeAccent
  ];
  //var colors = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];
  //var color =[Colors.lightBlueAccent,
  // (Colors.lightGreen),
  // (Colors.redAccent),
  // (Colors.yellowAccent),
  // (Colors.purpleAccent)
  // ];
  //const List_view_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("List with builder"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          
        },
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  color: color[index],
                  child: ListTile(
                    title: Text(names[index]),
                    subtitle: Text("${numbers[index]}"),
                    leading: Image.asset(photo[index]),

                    //Icon(Icons.phone_android),
                  ),
                );
              },
              itemCount: names.length,
            ),
          ),
        ],
      ),
    );
  }
}
