import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: citiesaround(),
  ));
}

class citiesaround extends StatelessWidget {
  var photo = [
    "https://cdn.pixabay.com/photo/2020/02/02/17/24/travel-4813658_960_720.jpg",
    "https://i.natgeofe.com/k/2847c949-6de3-4d11-998a-d3ce12d9edb0/finland-cityscape_3x2.jpg",
    "https://i2-prod.mirror.co.uk/incoming/article28871026.ece/ALTERNATES/s1200c/0_London-at-sunset.jpg",
    "https://cdn.britannica.com/56/94456-050-2ECDE7B8/Vancouver-British-Columbia-Canada.jpg"
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1200px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg",
  ];

  var names = [
    "Delhi",
    "London",
    "Finland",
    "New york",
    "Vancouver",
  ];

  var sub = ["India", "England", "Finland", "america", "Vancouver"];
  var description = [
    "Population : 32.9mil",
    "Population : 8.8mil",
    "Population : 3.5mil",
    "Population : 5.6mil",
    "Population : 2.4mil",
  ];
  //const citiesaround({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: Center(
            child: Text(
              "Cities Around World",
              style: TextStyle(color: Colors.white, fontSize: 30, height: 2),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.network(
                        photo[index],
                        fit: BoxFit.cover,
                        width: 200,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      left: 235,
                      top: 30,
                      child: Text(
                        names[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 235,
                      top: 70,
                      child: Text(
                        sub[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Positioned(
                      left: 235,
                      top: 118,
                      child: Text(
                        description[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
