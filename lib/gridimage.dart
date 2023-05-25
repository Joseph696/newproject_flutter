import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: imagegrid1(),
  ));
}

class imagegrid1 extends StatelessWidget {
  var image = [
    "https://upload.wikimedia.org/wikipedia/commons/b/bd/Taj_Mahal%2C_Agra%2C_India_edit3.jpg",
    "https://wallpapers.com/images/featured/b4dydodrhw6tw1ya.jpg",
    "https://images.thrillophilia.com/image/upload/s--vI0Q6HT9--/c_fill,g_auto,h_600,q_auto,w_975/f_auto,fl_strip_profile/v1/images/photos/000/082/497/original/1675261154_shutterstock_2148766633.jpg.jpg",
    "https://www.travelandleisure.com/thmb/Ob_Nwm7hl66sqsHuQghB9ERCEjs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/dubai-DUBAITG0721-04b6fdc668e649adb5368b3db401651c.jpg",
    "https://images.pexels.com/photos/2739664/pexels-photo-2739664.jpeg?cs=srgb&dl=pexels-tom-fisk-2739664.jpg&fm=jpg"
  ];
  //const imagegrid1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(28),
        child: AppBar(
          title: const Text("Popular"),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          backgroundColor: Colors.white,
        ),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 7,
              mainAxisExtent: 180),
          children: List.generate(
            5,
            (index) => Container(
              padding: EdgeInsets.all(1),
              margin: EdgeInsets.all(04),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      image[index],
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          )),
    );
  }
}
