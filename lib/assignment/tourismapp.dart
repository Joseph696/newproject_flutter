import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: tourismapp(),
  ));
}

class tourismapp extends StatelessWidget {
  //const tourismapp({super.key});

  var image = [
    "https://i.ytimg.com/vi/b1kbLwvqugk/maxresdefault.jpg",
    "https://i.ytimg.com/vi/Uq9gPaIzbe8/hq720.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/screen-shot-2022-10-28-at-3-36-22-pm-1666986517.png",
    "https://i.ytimg.com/vi/LmPmhJmrU-E/maxresdefault.jpg",
    "https://i.ytimg.com/vi/90RLzVUuXe4/maxresdefault.jpg",
  ];

  var title = ["Hero", "Unholy", "Lift me up", "Depression", "I'm good"];
  var subtitle = [
    "Taylor Swift",
    "Sam smith, Kim petras",
    "Rihanna",
    "Dax",
    "David guetta & Babe Rexha"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text("Musify.",
                    style: TextStyle(
                        color: Colors.pink[100],
                        fontSize: 45,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.all(12)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Suggested playlists",
                    style: TextStyle(color: Colors.pink[100], fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                    height: 180,
                    width: double.infinity,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i.scdn.co/image/ab67706c0000da84c82624b873d6a3392b0ab9cc"))),
                        height: 200,
                        width: 200,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i.scdn.co/image/ab67706f0000000268c6d3646278eb57046b8aba"))),
                        height: 200,
                        width: 200,
                      ),
                    ])),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Recommended for you",
                        style: TextStyle(color: Colors.pink[100], fontSize: 20),
                      )),
                ),
                SizedBox(
                  height: 2,
                ),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.black,
                          child: ListTile(
                            trailing: Wrap(
                              children: [
                                  Icon(
                                Icons.star_border,color: Colors.pink[100],),
                              SizedBox(width: 10,),
                                Icon(Icons.download_outlined,color: Colors.pink[100],)
                              ],
                             
                            ),
                            leading: Container(
                              height: 100,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(image[index])),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            title: Text(
                              title[index],
                              style: TextStyle(
                                  color: Colors.pink[100], fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              subtitle[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        );
                      },
                      itemCount: title.length,
                    ),
                  ],
                )
              ]),
            )),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink[100],
          backgroundColor: Colors.black,
          //fixedColor: Colors.black,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.pink[100]), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.pink[100]), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add, color: Colors.pink[100]),
                label: ""),
            //BottomNavigationBarItem(icon: Icon(Icons.more_horiz,color: Colors.pink[100]),label: "")
          ],
        ));
  }
}
