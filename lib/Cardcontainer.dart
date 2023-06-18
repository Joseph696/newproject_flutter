
import 'package:flutter/material.dart';
import 'Column1.dart';

class Cardcontainer extends StatelessWidget {
  const Cardcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Card(
          shape: Border.all(
              color: Colors.grey, width: 1),
          child: SizedBox(
            height: 65,
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Column1(),
                SizedBox(width: 25),
                Column(
                  children: [
                    
                    Image.asset(
                      
                        "assets/icons/degsgd.png",
                        width: 42),
                    Text("TRACEABILITY")
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Image.asset(
                      height: 15,
                        "assets/icons/ic_launcher88.png",
                        width: 42),
                    Text("LOCAL SOURCING")
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
