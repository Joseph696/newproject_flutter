import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: whatsappchat(),
  ));
}

class whatsappchat extends StatelessWidget {
  //const whatsappchat({super.key});
  var names = [
    "Amar",
    "Luminar Technolab - 2",
    "Hridhin Bangalore",
    "Pranav PS",
    "kiran Bangalore",
    "kelwin Gym",
    "Rahul",
    "Sibi Chettan",
    "Stinil Luminar",
    "Meetup",
    "Alan"
  ];
  var subtitle = [
    "Okkeyyyy",
    "~Luminar Technolab: http://www.instagram.com",
    "import'package:flutter/materialApp",
    "Messi is not goat ",
    "CR7 is real goat",
    "okey",
    "import'package:flutter/materialApp",
    "Photo",
    "import'package:flutter/materialApp",
    "Azif: Fine",
    "Dai"
  ];
  var photo = [
    "https://scontent.fcok3-1.fna.fbcdn.net/v/t39.30808-6/323445485_533948758794189_8587161627370473318_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=wdOOOVVsu60AX9K5vn4&_nc_ht=scontent.fcok3-1.fna&oh=00_AfC4zFK9jUrdwoQWfGBoMjJQrD1CE4BHAIkXQSQX-yMMHw&oe=6463ADC6",
    "https://scontent.fcok3-1.fna.fbcdn.net/v/t39.30808-6/270205185_2035623346587425_7964069386932966663_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=VZyZWIadvLMAX9uV43u&_nc_ht=scontent.fcok3-1.fna&oh=00_AfAoYQpcrA8JaSraCk6Ybmh7QVrh6iPcReli-DJ1FRyyvQ&oe=64646F49",
    "https://pps.whatsapp.net/v/t61.24694-24/336375533_918309099367230_902884252533405308_n.jpg?ccb=11-4&oh=01_AdS7sjHjCNGTPI4iHYh2QdfkWPYeEnbmWlnIZqtfYpqTAA&oe=646A0C76",
    "https://scontent.fcok3-1.fna.fbcdn.net/v/t39.30808-6/274933069_3023642001221632_4620130458315838596_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tx5h5Lc7lpUAX999g2o&_nc_ht=scontent.fcok3-1.fna&oh=00_AfBU5-ICui5gdeBn_35XC9sbx41LhbXYGEF_QVT1swBCnw&oe=6464342E",
    "https://scontent-tir2-1.xx.fbcdn.net/v/t1.6435-9/67346062_131975941373747_4533194803898220544_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=am_67o7ehAgAX-M26lQ&_nc_ht=scontent-tir2-1.xx&oh=00_AfAPfkaS_pCRkNFZhL3Xxa_aw2vyR22RgLOQakMR5ZARng&oe=6486BEBD",
    "https://pps.whatsapp.net/v/t61.24694-24/306661570_1277296489510791_2862463317690013446_n.jpg?ccb=11-4&oh=01_AdQS0KznRJ2vYoQjly9t136lCFwRUdux7I_j7_yMYKRpZQ&oe=646A513F",
    "https://pps.whatsapp.net/v/t61.24694-24/319755062_998773768163087_6663819755963562005_n.jpg?ccb=11-4&oh=01_AdRJNJRDR6b34GglKbkaVs3OB5LRM4lzMdpj30x9Pi3N8Q&oe=6467476B",
    "https://scontent-tir2-1.xx.fbcdn.net/v/t39.30808-6/240591409_224389576295429_5768873178800398409_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=BSjljuMVIcUAX_E51LP&_nc_ht=scontent-tir2-1.xx&oh=00_AfAIZqFzB2jd5uR2eJUmCCT4PpORT8TaQ_eOjPzanxLydw&oe=6463E9CF",
    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
    "https://pps.whatsapp.net/v/t61.24694-24/57620857_306550620013695_7687368208545742848_n.jpg?ccb=11-4&oh=01_AdSOcJmLi3nnclKx1C4Mdc35mfXGUTQeyL04hUMkmQz0Nw&oe=6465788E",
    "https://pps.whatsapp.net/v/t61.24694-24/345570409_1603785156799993_1502939506561858202_n.jpg?ccb=11-4&oh=01_AdTwj9sz6nPKzCYhSdbLz_gUx6XbtssoGFWtdThRjLkwNw&oe=646A3E30"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Color.fromARGB(205, 12, 99, 64),
          actions: [
            IconButton(
              icon: Icon(Icons.camera_alt_outlined),
              onPressed: () {},
            ),
            SizedBox(
              width: 8,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            SizedBox(
              width: 8,
            ),
            IconButton(
              icon: Icon(Icons.more_vert_rounded),
              onPressed: () {},
            )
          ],
        ),
      ),

      //body: Container(

      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     fit: BoxFit.cover,
      //     image: NetworkImage(
      //         "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
      //   ),
      // ),
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
                      title: Text(names[index]),
                      subtitle: Text(subtitle[index]),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(photo[index]),
                      )),
                );
              },
              itemCount: names.length,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        backgroundColor: Color.fromARGB(205, 12, 99, 64),
        onPressed: () {},
      ),
    );
  }
}
