import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_view_builder(),
  ));
}

class List_view_builder extends StatelessWidget {
  var names = ["athul", "stinil", "Rahul", "Hridhin", "pranav","Amar","Alan","Ayyappadas","kiran"];
  var numbers = [14524, 54548, 548845, 4542842, 482428,453543,345354,65645,563565];
  var photo = [
    "assets/icons/ic_launcher.png",
    "assets/icons/302-3026464_png-file-svg-login-member-icon-png.png",
    "assets/icons/8656178_facebook watch_chatting_video_streaming_application_icon.png",
    "assets/icons/Picsart_23-05-07_15-07-10-916.png",
    "assets/icons/logooo.png",
    "https://scontent.fcok3-1.fna.fbcdn.net/v/t39.30808-6/323445485_533948758794189_8587161627370473318_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=wdOOOVVsu60AX9K5vn4&_nc_ht=scontent.fcok3-1.fna&oh=00_AfC4zFK9jUrdwoQWfGBoMjJQrD1CE4BHAIkXQSQX-yMMHw&oe=6463ADC6",
    "https://pps.whatsapp.net/v/t61.24694-24/345570409_1603785156799993_1502939506561858202_n.jpg?ccb=11-4&oh=01_AdTwj9sz6nPKzCYhSdbLz_gUx6XbtssoGFWtdThRjLkwNw&oe=646A3E30",
    "https://lh3.googleusercontent.com/VHgDOlpXcvy-kjc8XfUx1VZ5du49yEZrGIFwdrwfWyPZfcDZBU8Ub0kTIaDHUihQxmCLLBpEHsqn0PF7HNRIYAxnX-AAxeeanSU-slQv",
    "https://scontent-tir2-1.xx.fbcdn.net/v/t1.6435-9/67346062_131975941373747_4533194803898220544_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=am_67o7ehAgAX-M26lQ&_nc_ht=scontent-tir2-1.xx&oh=00_AfAPfkaS_pCRkNFZhL3Xxa_aw2vyR22RgLOQakMR5ZARng&oe=6486BEBD"
  ];
  var color = [
    Colors.amberAccent,
    Colors.green,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.blueGrey,
    Colors.indigoAccent,
    Colors.tealAccent
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
        title: Text("Contact L"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          
        },
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            //SizedBox(
             // height: 300,
               ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    color: color[index],
                    child: ListTile(
                      trailing: Icon(Icons.phone,
                      color: Colors.white,),
                      
                      title: Text(names[index]),
                      subtitle: Text("${numbers[index]}"),
                      leading: CircleAvatar(backgroundImage: NetworkImage(photo[index]),),
      
                      //Icon(Icons.phone_android),
                    ),
                  );
                },
                itemCount: names.length,
              ),
          ],
        ),
      ),
    );
  }
}
