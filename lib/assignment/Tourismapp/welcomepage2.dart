import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: welcomepage2(),
  ));
}

class welcomepage2 extends StatelessWidget {
  const welcomepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        size: 28,
                        Icons.menu,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      Text(
                        "Go",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Text(
                        "Fast",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      SizedBox(width: 93),
                      Icon(
                        Icons.circle,
                        size: 50,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SearchBar(
                  hintText: 'Search', //trailing: Icon(Icons.abc_outlined),
                ),
              ),
              Row(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Popular Places',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      )),
                  SizedBox(
                    width: 210,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.grey[800]),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,q_auto/v1/filestore/fovex2feo2zuv5fnwdyz5y6cmxo7_shutterstock_520670536-min.jpg"))),
                    ),
                    SizedBox(width: 15),
                    Container(
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://www.thetimes.co.uk/travel/wp-content/uploads/sites/6/2022/05/1.-The-view-of-the-futuristic-Dubai-skyline-at-dusk-UAE_Credit_Alamy_2D6TKEP.jpg?w=780&quality=75&strip=all")))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i.natgeofe.com/n/95cf97a9-3998-411c-ba34-25408f2e601c/dawn-vestrahorn-iceland-mountains_square.jpg")))),
                    SizedBox(width: 15),
                    Container(
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://beblissfultravel.com/wp-content/uploads/2022/10/image-12.jpeg"))))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.thejourneybound.com/wp-content/uploads/2020/08/Top-5-destinations-for-your-socially-distant-vacation-Southeast-luxury-beach-resorts.jpeg"))),
                    ),
                    SizedBox(width: 15),
                    Container(
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6c/24/be.jpg"),
                            )))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 100,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
                backgroundColor: MaterialStatePropertyAll(Colors.blue[900])),
            onPressed: () {},
            child: Text(
              'Explore Now',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
