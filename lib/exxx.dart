import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Grid1()));
}

class Grid1 extends StatelessWidget {
  var cardcontent= [ Icon(Icons.home),
      Icon(Icons.home),
        Icon(Icons.home),
          Icon(Icons.home),
            Icon(Icons.home),
              Icon(Icons.home),
                Icon(Icons.home),
                  Icon(Icons.home),
                    Icon(Icons.home),
                      Icon(Icons.home),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView 1"),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 22, mainAxisSpacing: 22,mainAxisExtent: 70),
          children: List.generate(
            10,
            (index) => Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                 
                 
                //color: colors[index],
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(2, 8)),
                ],
              ),
              //color: colors[index],
              child: Column(
                children: [
                  Card(
                    
                    child: ListTile(
                      title: Text("Heart Shaker"),
                      leading: cardcontent[index] ,
                      tileColor: colors[index],
                      
                    ),
                  ),
                ],
              ),
            ),
          )
          //const [
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          // ],
          ),
    );
  }

  var colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
  ];
}