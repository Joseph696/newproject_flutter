import 'package:flutter/material.dart';

class container1 extends StatelessWidget {
  const container1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(
                          Colors.green[100]),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                  18)))),
              onPressed: () {},
              child: Text(
                "VEGETABLES",
                style:
                    TextStyle(color: Colors.green[800]),
              )),
          SizedBox(
            width: 5,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(
                          Colors.green[100]),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                  18)))),
              onPressed: () {},
              child: Text(
                "FRUITS",
                style:
                    TextStyle(color: Colors.green[800]),
              )),
          SizedBox(
            width: 5,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(
                          Colors.green[100]),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                  18)))),
              onPressed: () {},
              child: Text(
                "EXOTIC",
                style:
                    TextStyle(color: Colors.green[800]),
              )),
          SizedBox(
            width: 5,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(
                          Colors.green[100]),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                  18)))),
              onPressed: () {},
              child: Text(
                "FRESH CUTS",
                style:
                    TextStyle(color: Colors.green[800]),
              )),
        ],
      ),
    );
  }
}
