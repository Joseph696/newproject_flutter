import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: grid1(),
  ));
}

class grid1 extends StatelessWidget {
  var colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.blueGrey,
    Colors.pink,
    Colors.lime,
    Colors.indigo,
  ];

  var icons = [
    Icon(Icons.home),
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
  //const grid1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gridview 1"),
        ),
        body: Card(
          
          child: Padding(
            
            padding: const EdgeInsets.all(8.0),
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 22,
                    mainAxisSpacing: 22,
                    mainAxisExtent: 70),
                children: List.generate(
                  10,
                  
                  
                  (index) => Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: icons[index],
                          title: Text("Heart Shaker"),
                          tileColor: colors[index],
                          
                        ),
                        Container(
                          
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            
                              
                              boxShadow: const [
                                BoxShadow(
                                  
                                    color: Colors.blueGrey,
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(2, 8))
                              ]),
                          //child: Card(
                          //color: colors[index],
                          //child: const Center(
                            //child: Text("Heart Shaker"),
                          ),
                      ],  ),
                  ),
                   // ],
                  ),
                ),
          ),
          ),
        );
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Text("Hello"),
        //   ),
        // ),
        //],
      
    //);
  }
}
