import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newproject_flutter/passing%20data%20btwn%20screens/dummydata.dart';
import 'package:newproject_flutter/passing%20data%20btwn%20screens/prodetails.dart';

void main() {
  runApp(MaterialApp(home: Productscreen(), routes: {
    "Secondpage": (context) => productdetails(),
  }));
}

class Productscreen extends StatelessWidget {
  //const Productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.android,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Adidas.in",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: products
            .map((products) => Container(
                  height: 150,
                  width: 120,
                  child: ListTile(
                    title: Text(
                      products["product"],
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    leading: Image.network(products["Image1"],),
                    subtitle: Text(products["Description"],
                    style: TextStyle(color: Colors.grey,fontSize: 10),),
                    trailing: Text(
                      "\₹${products["Price"]}",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onTap: () {
                      gotoNext(context, products["id"]);
                    },
                  ),
                ))
            .toList(),
      ),
    );
  }

  void gotoNext(BuildContext context, productid) {
    Navigator.of(context).pushNamed("Secondpage",arguments: productid);
  }
}
