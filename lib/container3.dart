import 'package:flutter/material.dart';

class container3 extends StatelessWidget {
  const container3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      child: Column(
        children: [
          Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgWYGwfJ9_UHuSIs3LCdY_lxP_eY6XD4Y4g&usqp=CAU",
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Text('Vegetables'),
          )
        ],

        //child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgWYGwfJ9_UHuSIs3LCdY_lxP_eY6XD4Y4g&usqp=CAU"),
      ),
    );
  }
}
