import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Assignment(),
  ));
}

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  var photos = [
    "https://media.tacdn.com/media/attractions-splice-spp-674x446/0f/c5/e8/5c.jpg",
    "https://img.theculturetrip.com/wp-content/uploads/2017/03/shutterstock_412054315-s-borisov.jpg",
    "https://images.adsttc.com/media/images/5d44/14fa/284d/d1fd/3a00/003d/large_jpg/eiffel-tower-in-paris-151-medium.jpg?1564742900",
    "https://travel2next.com/wp-content/uploads/cities-in-finland-helsinki.jpg",
    "https://image.cnbcfm.com/api/v1/image/106268734-1574876711571gettyimages-1059614218.jpeg?v=1576856860",
    "https://media.cntraveler.com/photos/61ae4cdb5dbede2a7d001ffa/3:2/w_6000,h_4000,c_limit/Vancouver_Destination%20Vancouver:Albert%20Normandin_86498_Master.jpg"
  ];
  var title = ["Delhi", "Landon", "Paris", "Finland", "New York", "Vancouver"];
  var subtitle = ["India", "UK", "France", "Europe", "America", "Canada"];
  var discription = [
    "Population : 32.9mil",
    "Population : 8.8mil",
    "Population : 3.5mil",
    "Population : 5.6mil",
    "Population : 2.4mil",
    "Population : 4.3mil"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.purpleAccent,
            centerTitle: true,
            title: Text(
              "World Tourist",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            )),
        body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 190,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(photos[index]))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[index],
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              subtitle[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              discription[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
