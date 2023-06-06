import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: musicui1(),
  ));
}

var image = [
  "https://cdn.shopify.com/s/files/1/0247/9957/6138/products/black-product-detail_650x.jpg?v=1672918882",
  "https://i.scdn.co/image/ab6761610000e5eb9c9049f4e792311b320f64e5",
  "https://i.scdn.co/image/ab67706f000000028d90dd98d40fd7fba2fd0223",
  "https://i.scdn.co/image/ab67706f0000000263e9077fafe0c8a4340bd955",
  "https://i.scdn.co/image/ab67706f00000002999942da12e79df3201c5b75",
];
var image2 = [
  
  "https://i.scdn.co/image/ab67706f000000029e12329e61a4f553b3a85d08",
  "https://i.scdn.co/image/ab67706c0000da84f71afded6326f0b319311eb9",
  "https://i.scdn.co/image/ab67706f00000002a09f77eae99f6f8eaff98ded",
  "https://i.scdn.co/image/ab67706f00000002db32a17c1f5291b19317b62e",
  "https://i.scdn.co/image/ab67706f00000002c9f71ed97ed8a033d67df52a"
];

class musicui1 extends StatelessWidget {
  const musicui1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding:  EdgeInsets.all(14.0),
              child: Container(
                
                alignment: Alignment.topCenter,
                child: Text(
                  "Playlists",
                  style: GoogleFonts.yanoneKaffeesatz(
                      color: Colors.pink[100],
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Container(
              margin: EdgeInsets.all(10),
              child: SearchBar(
                hintText: ("Search"),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27))),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(98, 226, 187, 199)),
              ),
            ),
            Padding(
                padding:  EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                  "https://cdn.shopify.com/s/files/1/0247/9957/6138/products/black-product-detail_650x.jpg?v=1672918882",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                   "https://i.scdn.co/image/ab67706c0000da84f71afded6326f0b319311eb9",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ))
                          ]),
                    ),
                    Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                  "https://i.scdn.co/image/ab67706f00000002a09f77eae99f6f8eaff98ded",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                   "https://i.scdn.co/image/ab67706f00000002db32a17c1f5291b19317b62e",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ))
                          ]),
                    ),
                      Padding(
                padding:  EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                  "https://cdn.shopify.com/s/files/1/0247/9957/6138/products/black-product-detail_650x.jpg?v=1672918882",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                   "https://i.scdn.co/image/ab67706c0000da84f71afded6326f0b319311eb9",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ))
                          ]),
                    ),
                    Padding(
                padding:  EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                  "https://i.scdn.co/image/ab67706f00000002c9f71ed97ed8a033d67df52a",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.network(
                                   "https://i.scdn.co/image/ab6761610000e5eb9c9049f4e792311b320f64e5",
                                  height: 130,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ))
                          ]),
                    ),
            
            
                  ],
                ))
          ]))]))]))]),
        ));
  }
}
