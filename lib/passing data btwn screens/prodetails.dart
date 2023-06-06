import 'package:flutter/material.dart';
import 'package:newproject_flutter/passing%20data%20btwn%20screens/dummydata.dart';

class productdetails extends StatelessWidget {
  const productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final productfromList =
        products.firstWhere((element) => element["id"]== productId);
    return Scaffold(
      appBar: AppBar(
        title: Text("Adidas Men"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(productfromList["Image1"]),
            Text(productfromList["product"]),
            Text(productfromList["Rating"]),
            Text(productfromList["Description"])
          ],
        ),

      ),
    );
  }
}
