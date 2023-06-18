// 


import 'package:flutter/material.dart';
import 'package:newproject_flutter/Cardcontainer.dart';
import 'Column1.dart';
import 'container1.dart';
import 'container2.dart';
import 'container3.dart';

void main() {
  runApp(MaterialApp(
    home: Framersfresh(),
    debugShowCheckedModeBanner: false,
  ));
}

class Framersfresh extends StatelessWidget {
  List names2 = ["vegetables", "Fruits", "Exotic", "Fresh cuts", "Spices","packked veggies","Salds","Fresh Cuts"];
  List image = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCQtSA2KGPIuudCmPPG6ySwb7WCgWc7kT_xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCQtSA2KGPIuudCmPPG6ySwb7WCgWc7kT_xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCQtSA2KGPIuudCmPPG6ySwb7WCgWc7kT_xw&usqp=CAU",
  ];
  List items = ["Vegetables", "Fruits", "Exotic"];
  List veggies = ["https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png",
  "https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png",
  "https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png",
  "https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png",
  "https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png",
  "https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png",
  "https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png",
  "https://bloximages.chicago2.vip.townnews.com/tillamookheadlightherald.com/content/tncms/assets/v3/editorial/6/01/6016605a-0233-11ed-8609-1367264305fc/62cdf7efabeb2.image.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("Kochi"),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              )
            ],
            title: Text("Farmers Fresh Zone"),
            backgroundColor: Colors.green,
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Padding(
                padding: EdgeInsets.only(
                  right: 3,
                  left: 3,
                ),
                child: SizedBox(
                  child: Container(
                    height: 43,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(9)),
                          hintText: "Search for Vegetables and fruits....",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      names2.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(top: 4, left: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            names2[index],
                            style: TextStyle(color: Colors.green),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(2)),
                SizedBox(height: 150, child: container2()),
                Padding(padding: EdgeInsets.all(2)),
                SizedBox(
                  child: Cardcontainer(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 1),
                  child: Row(
                    children: [
                      Text(
                        "Shop By Category",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: 
GridView.count(
                  padding: EdgeInsets.zero,
                  childAspectRatio: .9,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  children: List.generate(
                      8,
                      (index) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0, // soften the shadow
                                      spreadRadius: 2.0, //extend the shadow
                                      offset: Offset(
                                        5.0, // Move to right 5  horizontally
                                        2.0, // Move to bottom 5 Vertically
                                      ),
                                    )
                                  ],
                                  //color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 243, 245, 243)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    child: Image(
                                      image:
                                          NetworkImage(veggies[index]),
                                      width: double.infinity,
                                      height: 95,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(names2[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center),
                                  ),
                                ],
                              )))),
                )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 310,
                    height: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/1182815477/photo/woman-with-shopping-between-store-shelf-portrait-copy-space.webp?b=1&s=170667a&w=0&k=20&c=TtK6TTpfrzsbG3r0EzOjr7brvTA3Uq_0-m9mET-eQxA="),
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          )]));
        
  }
}