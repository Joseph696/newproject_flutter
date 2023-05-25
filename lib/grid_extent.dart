import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_extent()
  ));
}

class Grid_extent extends StatelessWidget {
  var color = [
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
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.lime
  ];
  //const Grid_extent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
          maxCrossAxisExtent: 50,
          children: List.generate(
              20,
              (index) => Stack(
                    children: [
                      Container(
                        color: color[index],
                        
                      ),
                      Center(
                        child: Icon(Icons.ac_unit_outlined,size: 30,),
                        
                        
                      )
                    ],
                  ))),
    );
  }
}
