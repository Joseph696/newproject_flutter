import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: whatsappcall(),
  ));
}

class whatsappcall extends StatelessWidget {
  var names = [
    "+917012263463",
    "vishnu & 9 others",
    "Danny (Snisgt)",
    "Dias",
    "Hridhin Bangalore",
    "Kiran Bangalore",
    "Flutter Dev",
    "Amar",
    "GOUTHAM NIVAS"
  ];
  var subtitle = [
    "May 9, 3:12 PM",
    "May 6, 11:04 PM",
    "April 27, 8:42 PM",
    "April 13, 6:37 AM",
    "April 11, 9:59 PM",
    "April 3, 10:09 PM",
    "March 30, 1:09 PM",
    "March 28, 6:17 PM",
    "(2) March 10, 9:53 AM"
  ];
  var photo = [
    "https://pps.whatsapp.net/v/t61.24694-24/319755062_998773768163087_6663819755963562005_n.jpg?ccb=11-4&oh=01_AdQPqUOCB-KCYYEeJIahNN9eCwQNX9Y2ZVqb1_Uzdm00YA&oe=646CC5AB",
    "https://cdn3.iconfinder.com/data/icons/social-media-logos-flat-colorful/2048/5302_-_Whatsapp-512.png",
    "https://pps.whatsapp.net/v/t61.24694-24/312298355_1499336473884229_3461429519075028028_n.jpg?ccb=11-4&oh=01_AdTwHtmHJ5n9T2hRY7nwZTEcDF3ln1nqLMxVSbjIpfXTLw&oe=646C9F4F",
    "https://pps.whatsapp.net/v/t61.24694-24/345145518_276358204740611_5056068570874327790_n.jpg?ccb=11-4&oh=01_AdQX66Fx7DJOYmEju0bbn2kPXmftZXPBSYcgx2Vy_VMh2Q&oe=646C9B95",
    "https://pps.whatsapp.net/v/t61.24694-24/336375533_918309099367230_902884252533405308_n.jpg?ccb=11-4&oh=01_AdTjNh8i-fHdCMJl72YnmkkJVWynV-IsMJcCgp3wyH_LlQ&oe=646CAF76",
    "https://pps.whatsapp.net/v/t61.24694-24/342983737_1371147510282873_7843913174783631866_n.jpg?ccb=11-4&oh=01_AdSwzJwd2XruHf2RheLqnKKZN7iET3nku1Lpuhk9ccP7yA&oe=646CA733",
    "https://pps.whatsapp.net/v/t61.24694-24/328290357_573994558095798_8515948377931785696_n.jpg?ccb=11-4&oh=01_AdT8imrJBnJlteL9WfVwr1EFBp9fPcHMGmCeYTg92iYwNQ&oe=646CB14E",
    "https://pps.whatsapp.net/v/t61.24694-24/317712721_568625091271276_1750940696799194079_n.jpg?ccb=11-4&oh=01_AdTE9cYU1f9e6qqED-jfyXiqXISPf8GZaDIp5lpJBREiiA&oe=646CA23B",
    "https://pps.whatsapp.net/v/t61.24694-24/315771836_1752803685114042_1150865720366955003_n.jpg?ccb=11-4&oh=01_AdSkCuP5ePDDZmG6fWjgt68T0P_dDbtbSz-OFKaieb5ngw&oe=646CC556"
  ];
  //const whatsappcall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100),
      //   child: AppBar(
      //     title: Text("WhatsApp"),
      //     backgroundColor: Color.fromARGB(205, 12, 99, 64),
      //     actions: [
      //       IconButton(
      //         icon: Icon(Icons.camera_alt_outlined),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.search),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.more_vert_rounded),
      //         onPressed: () {},
      //       )
      //     ],
      //   ),
      //),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    trailing: Icon(Icons.phone,color: Colors.green[600],),
                    title: Text(names[index]),
                    subtitle: Text(subtitle[index]),
                    leading: CircleAvatar(backgroundImage: NetworkImage(photo[index])),
                  ),
                );
              },
              itemCount: names.length,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.phone_rounded),
      backgroundColor: Color.fromARGB(205, 12, 99, 64),
      onPressed: () {
        
      },),
    );
  }
}
