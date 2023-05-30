import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: profileui2()));
}

class profileui2 extends StatelessWidget {
  const profileui2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 360,
            child: Row(
              children: [
                Icon(Icons.menu),
                SizedBox(
                  width: 100,
                ),
                Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                SizedBox(
                  width: 120),
                Icon(Icons.more_vert_outlined)
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://img.freepik.com/free-vector/gradient-mountain-landscape_23-2149162009.jpg?w=2000",
                    ))),
          ),
          Container(
            margin: EdgeInsets.only(top: 230),
            height: 135,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.sportsbrief.com/images/1120/995b108aa8d11491.webp?v=1"))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue[500]),
                      shape: MaterialStatePropertyAll(CircleBorder())),
                  onPressed: () {},
                  child: Icon(Icons.message, color: Colors.white)),
              SizedBox(
                height: 595,
                width: 180,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.red[500]),
                      shape: MaterialStatePropertyAll(CircleBorder())),
                  onPressed: () {},
                  child: Icon(Icons.add, color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 420,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Cristiano Ronaldo",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),
                      Text("Footballer/ G.O.A.T",
                          style:
                              TextStyle(color: Colors.blue[300], fontSize: 14))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
