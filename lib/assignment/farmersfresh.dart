import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: farmersfresh(),
  ));
}

class farmersfresh extends StatelessWidget {
  // const farmersfresh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: CustomScrollView(slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 50, 181, 54),
              floating: false, // make it scrollable
              pinned: true, // make it not scrollable
              title: Row(
                children: [
                  Text(
                    "FARMERS FRESH ZONE",
                    style: GoogleFonts.righteous(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(Icons.location_on_outlined),
                  Text(
                    "Kochi",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                  )
                ],
              ),

              bottom: AppBar(
                elevation: 1,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search for vegetables, Fruits..",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
          ])),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CustomScrollView(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.green[100]),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18)))),
                              onPressed: () {},
                              child: Text(
                                "VEGETABLES",
                                style: TextStyle(color: Colors.green[800]),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.green[100]),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18)))),
                              onPressed: () {},
                              child: Text(
                                "FRUITS",
                                style: TextStyle(color: Colors.green[800]),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.green[100]),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18)))),
                              onPressed: () {},
                              child: Text(
                                "EXOTIC",
                                style: TextStyle(color: Colors.green[800]),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.green[100]),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18)))),
                              onPressed: () {},
                              child: Text(
                                "FRESH CUTS",
                                style: TextStyle(color: Colors.green[800]),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 238,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          child: CarouselSlider(
                            items: [
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.shopify.com/s/files/1/0631/7978/4450/files/nourish-vegan-food-delivery-catering-houston-organic-carrots-health-benefits-cg_480x480.jpg?v=1675702723"),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://www.verywellfit.com/thmb/7Dgt_aY6akNf7i1kAGGFquWCvhk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/cabbage_annotated2-3925d776bc114c0f95d7b81e9d82db96.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://www.momsknowbest.in/hubfs/Food-Artical-28.jpg"),
                                        fit: BoxFit.cover)),
                              )
                            ],
                            options: CarouselOptions(
                              autoPlay: true,
                              viewportFraction: 1,
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                              autoPlayCurve: Curves.easeInExpo,
                              autoPlayAnimationDuration:
                                  const Duration(seconds: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                        physics: ScrollPhysics(),
                        child: Padding(padding: EdgeInsets.all(04))),
                    Column(
                      children: [
                        Container(
                            child: Card(
                          shape: Border.all(color: Colors.grey, width: 1),
                          child: SizedBox(
                            height: 65,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Image.asset("assets/icons/ic_launcher.png"),
                                    Text("30 MINS POLICY")
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    Image.asset("assets/icons/degsgd.png"),
                                    Text("TRACEABILITY")
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    Image.asset(
                                        "assets/icons/ic_launcher88.png"),
                                    Text("LOCAL SOURCING")
                                  ],
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: SizedBox(
                              width: 390,
                              child: Text("Shop By Category",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18)))),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                                child: Container(
                                    width: 110,
                                    height: 100,
                                    child: Column(
                                      children: [
                                       
                   Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgWYGwfJ9_UHuSIs3LCdY_lxP_eY6XD4Y4g&usqp=CAU",
                                fit: BoxFit.cover,
                              ),
                            )),
                      
                              Container(
                               padding: const EdgeInsets.all(5.0),
                               child  :Text('Vegetables'),
                            )
                      ],

                            //child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgWYGwfJ9_UHuSIs3LCdY_lxP_eY6XD4Y4g&usqp=CAU"),
                ),),),
                                  Card(
                                child: Container(
                                    width: 100,
                                    height: 100,
                                    child: Column(
                                      children: [
                                       
                   Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                "https://www.eatrightbasket.com/wp-content/uploads/2019/04/pineapple-500x500.jpg",height: 65,
                                fit: BoxFit.cover,
                              ),
                            )),
                      
                              Container(
                               padding: const EdgeInsets.all(5.0),
                               child  :Text('Fruits'),
                            )
                      ],

                            //child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgWYGwfJ9_UHuSIs3LCdY_lxP_eY6XD4Y4g&usqp=CAU"),
                ),),),
                 Card(
                                child: Container(
                                    width: 110,
                                    height: 100,
                                    child: Column(
                                      children: [
                                       
                   Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                "https://www.gardeningknowhow.com/wp-content/uploads/2021/05/assortment-of-colorful-ripe-tropical-fruits.jpg",width: 85,
                                fit: BoxFit.cover,
                              ),
                            )),
                      
                              Container(
                               padding: const EdgeInsets.all(5.0),
                               child  :Text('Exotic'),
                            )
                      ],

                          
                        ))),],
                        ),
                        Card(
                           child: Container(
                                    width: 110,
                                    height: 100,
                                    child: Column(
                                      children: [
                                       
                   Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                "https://www.gardeningknowhow.com/wp-content/uploads/2021/05/assortment-of-colorful-ripe-tropical-fruits.jpg",width: 85,
                                fit: BoxFit.cover,
                              ),
                            )),
                      
                              Container(
                               padding: const EdgeInsets.all(5.0),
                               child  :Text('Exotic'),
                            )
                      ],


                        )
                     ),) ],
                        
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
