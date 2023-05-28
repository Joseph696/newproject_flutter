import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(home: hotelui()));
}

class hotelui extends StatelessWidget {
  const hotelui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/ee/8c/93/hotel-exterior.jpg?w=700&h=-1&s=1")),
              ),
            ),
            Container(
              child: Positioned(
                  left: 27,
                  top: 280,
                  child: Text(
                    "Crowne Plaza",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
                child: Positioned(
              left: 27,
              top: 300,
              child: Text(
                "Kochi, Kerala",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                height: 690,
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(15),
                            )),
                        onPressed: () {},
                        child: Text(
                          "8.4/85 reviews",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        )),
                    SizedBox(
                      width: 283,
                      child: IconButton(
                          alignment: Alignment.topRight,
                          iconSize: 25,
                          onPressed: () {},
                          icon: SizedBox(
                              child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ))),
                    )
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 800,
                  child: Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 20,
                        minRating: 2,
                        itemBuilder: ((context, index) => Icon(
                              Icons.star,
                              color: Colors.purple,
                            )),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        width: 260,
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "\$200",
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 20),
                            )),
                      )
                    ],
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 850,
                  child: Row(
                    children: [
                      Text("8 km to Lulu mall",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      SizedBox(
                        width: 260,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "/Per day",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 1,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 950,
                  child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.purple),
                          onPressed: () {},
                          child: Text("Book Now",
                              style: TextStyle(color: Colors.white)))),
                );
              },
            ),
            ListView.builder(
              itemCount: 1,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 500,
                  height: 1010,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ramada Plaza palm Grove",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SizedBox(
                  
                  height: 1100,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.only(),
                      margin: EdgeInsets.all(7),
                      child: Text(
                        "The reaffirmation of the rating assigned to the long-term bank facilities of Palm Grove Beach Hotels Pvt. Ltd."
                        "Ramada Plaza Palm Grove - One of the best five star luxury business hotels in Juhu Mumbai, an ideal venue for meetings, corporate events, conferences and seminars in Mumbai.",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
        bottomNavigationBar: ConvexAppBar(items: [
          TabItem(
            icon: Icon(Icons.search),
          ),
          TabItem(icon: Icon(Icons.favorite)),
          TabItem(icon: Icon(Icons.settings))
        ]));
  }
}
