import 'package:flutter/material.dart';
import 'package:newproject_flutter/Grid_view.dart';
import 'package:newproject_flutter/flashpage.dart';
import 'package:newproject_flutter/grid_count.dart';
import 'package:newproject_flutter/grid_custom.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    home: bottombar(),
  ));
}

class bottombar extends StatefulWidget {
  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  var screens = [flash1(), grid_count(), grid_custom(), grid1()];
  int index = 0;
  //const bottombar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
        ),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => print('click index=$i'),
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //     type: BottomNavigationBarType.shifting,
        //     selectedItemColor: Colors.yellow,
        //     //backgroundColor: Colors.yellow,
        //     onTap: (tapindex) {
        //       setState(() {
        //         index = tapindex;
        //       });
        //     },
        //     items: const [
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.green,
        //           icon: Icon(Icons.people),
        //           label: "profile"),
        //       BottomNavigationBarItem(
        //         backgroundColor: Colors.lime,
        //         icon: Icon(Icons.phone), label: "Phone"),
        //       BottomNavigationBarItem(
        //         backgroundColor: Colors.orange,
        //           icon: Icon(Icons.message_outlined), label: "message"),
        //       BottomNavigationBarItem(
        //         backgroundColor: Colors.purple,
        //           icon: Icon(Icons.atm_outlined), label: "ATM"),
        //     ]),

        body: Center(child: screens[index]));
  }
}
