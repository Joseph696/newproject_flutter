import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject_flutter/Cardcontainer.dart';

import '../Column1.dart';
import '../container1.dart';
import '../container2.dart';
import '../container3.dart';

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
        backgroundColor: Colors.white,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
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
                    delegate: SliverChildListDelegate(
                      [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              container1(),
                              SizedBox(
                                height: 238,
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: container2(),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(04)),
                              Cardcontainer(),
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
                                        child: container3(),
                                      ),
                                      Card(
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          child: Column(
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    child: Image.network(
                                                      "https://www.eatrightbasket.com/wp-content/uploads/2019/04/pineapple-500x500.jpg",
                                                      height: 65,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text('Fruits'),
                                              )
                                            ],

                                            //child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgWYGwfJ9_UHuSIs3LCdY_lxP_eY6XD4Y4g&usqp=CAU"),
                                          ),
                                        ),
                                      ),
                                      Card(
                                          child: Container(
                                              width: 110,
                                              height: 100,
                                              child: Column(
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.network(
                                                          "https://hips.hearstapps.com/hmg-prod/images/avocado-salad-1524672116.png?crop=0.8893333333333334xw:1xh;center,top&resize=1200:*",
                                                          width: 85,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      )),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Text('Salads'),
                                                  )
                                                ],
                                              ))),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Row(
                                      children: [
                                        Card(
                                          child: Container(
                                              width: 110,
                                              height: 100,
                                              child: Column(
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.network(
                                                          "https://www.gardeningknowhow.com/wp-content/uploads/2021/05/assortment-of-colorful-ripe-tropical-fruits.jpg",
                                                          width: 85,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      )),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Text('Exotic'),
                                                  )
                                                ],
                                              )),
                                        ),
                                        Card(
                                            child: Container(
                                                width: 110,
                                                height: 100,
                                                child: Column(
                                                  children: [
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          child: Image.network(
                                                            "https://cdn.shopify.com/s/files/1/0522/4149/8278/products/Precuttricolourcapsicum_600x.jpg?v=1655198041",
                                                            width: 85,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Text('Fresh cuts'),
                                                    )
                                                  ],
                                                ))),
                                        Card(
                                            child: Container(
                                                width: 110,
                                                height: 100,
                                                child: Column(
                                                  children: [
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          child: Image.network(
                                                            "https://ychef.files.bbci.co.uk/1376x774/p08hq2br.jpg",
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Text(
                                                          'Nutricious cut'),
                                                    )
                                                  ],
                                                )))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Row(
                                      children: [
                                        Card(
                                          child: Container(
                                              width: 110,
                                              height: 100,
                                              child: Column(
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.network(
                                                          "https://www.growsa.africa/media/com_mtree/images/listings/o/5320.jpg",
                                                          width: 85,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      )),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Text('packed Cut'),
                                                  )
                                                ],
                                              )),
                                        ),
                                        Card(
                                            child: Container(
                                                width: 110,
                                                height: 100,
                                                child: Column(
                                                  children: [
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          child: Image.network(
                                                            "https://uploads-ssl.webflow.com/6274052ead4406a10620e3d4/6296661fb866e6de5e95977c_grilled-veggies.jpg",
                                                            width: 85,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child:
                                                          Text('Grilled veg'),
                                                    )
                                                  ],
                                                ))),
                                        Card(
                                            child: Container(
                                                width: 110,
                                                height: 100,
                                                child: Column(
                                                  children: [
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          child: Image.network(
                                                            "https://ychef.files.bbci.co.uk/1376x774/p08hq2br.jpg",
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Text('Big Basket'),
                                                    )
                                                  ],
                                                )))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: ClipRRect(
                                  child: Image.network(
                                    "https://cdn.shopify.com/s/files/1/0553/8765/2286/articles/44_1024x1024.jpg?v=1647298354",
                                    fit: BoxFit.fill,
                                    height: 150,
                                    width: 350,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Row(
                                children: [
                                  Container(
                                    
                                    child: Image.network(
                                      "https://admin.tajataji.com/upload/images/6467-2021-03-04.jpg",
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                      "https://admin.tajataji.com/upload/images/6467-2021-03-04.jpg",
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                      "https://admin.tajataji.com/upload/images/6467-2021-03-04.jpg",
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: 100,
                                    ),
                                  )
                                ],
                              ),
                              Card(
                                child: Title(
                                    color: Colors.black, child: Text("Tomato")),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ])));
  }
}
