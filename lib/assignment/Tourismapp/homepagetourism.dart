import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hometourismpage(),
  ));
}

class hometourismpage extends StatelessWidget {
  const hometourismpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                      width: 220,
                      child: Text(
                        'Most furious place & peaceful natural places',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 17),
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 27,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                        
                        "https://media-cdn.tripadvisor.com/media/photo-s/1c/19/dd/ff/grand-water-villas-with.jpg"),)
                    ),
                      // height: 55,
                      // width: 55,
                      // child: Image.network(
                      //     fit: BoxFit.cover,
                      //     "https://media-cdn.tripadvisor.com/media/photo-s/1c/19/dd/ff/grand-water-villas-with.jpg")
                      )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border_outlined,
                    size: 20,
                    color: Colors.yellow[700],
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 20,
                    color: Colors.yellow[700],
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 20,
                    color: Colors.yellow[700],
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 20,
                    color: Colors.yellow[700],
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '4.7 rating',
                    style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'About Places',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),
            ),
            Container(
                width: 350,
                //height: 200,
                child: Text(
                    'The Maldives, officially the Republic of Maldives, is a Southern Asian archipelagic state situated in the Indian Ocean. The country lies southwest of the republics of Sri Lanka and India, about 750 kilometres from the continental mainland of Asia.')),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Special Facilities',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Icon(
                    Icons.car_repair,
                    color: Colors.blue,
                  ),
                  Text(
                    'Parking',
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Icon(
                    Icons.av_timer_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    '24x7 Support',
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Icon(
                    Icons.wifi,
                    color: Colors.blue,
                  ),
                  Text(
                    'Free WiFi',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Container(
              height: 180,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://i0.wp.com/samudramaldives.com/wp-content/uploads/things-to-do-in-maldives-at-night.jpg?fit=1920%2C1280&ssl=1'))),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Special Facilities',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Container(
                     decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    height: 38,
                    width: 60,
                    child: Column(
                      children: [
                        Text(
                          'Adult',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '02',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                    
                      ],
                    ),
                   
                  ),
                      SizedBox(width: 40,),
                           Container(
                            decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    height: 38,
                    width: 60,
                    child: Column(
                      children: [
                        Text(
                          'Adult',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '02',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                    
                      ],
                    ),
                            
                           ),
                           SizedBox(width: 40,),
                           Container(
                                 decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    height: 38,
                    width: 60,
                    child: Column(
                      children: [
                        Text(
                          'Adult',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '02',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                    
                      ],
                    ),

                           ),
                           SizedBox(width: 40,),
                           Container(
                             decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    height: 38,
                    width: 60,
                    child: Column(
                      children: [
                        Text(
                          'Adult',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '02',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                    
                      ],
                    ),

                           )
                  
                ],
              ),
            )
          ],
        ),
      
      ),
      bottomNavigationBar: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20))),
          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
        onPressed: (){}, child: Text('Explore Now',style: TextStyle(color: Colors.white),)),
    );
  }
}
