import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_count(),
  ));
}

class grid_count extends StatelessWidget {
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
  //const grid_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(

        crossAxisCount: 2,
        
        children: 
          List.generate(11, (index) => Container(

       margin: EdgeInsets.all(10),   
    
     color: colors[index],
            child: const Center(
              child: Text("Hello"),
            ),
          ))
       
        
      ),
    );
  }
}
