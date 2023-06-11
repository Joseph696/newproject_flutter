import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: tourismsplash(),
  ));
}

class tourismsplash extends StatelessWidget {
  const tourismsplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(110.0),
                child: Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://1.bp.blogspot.com/-715iBvZRxN4/Tqc09_JTOYI/AAAAAAAACgM/PhMfAsfX1cY/s280/Maldives+tourism+logo.jpg"))),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
                onPressed: () {},
                child: Text("Log In")),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "-Or-",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              //height: MediaQuery.of(context).size.height*0.1,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue[800]),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: ListTile(
                    title: Text("Login With facebook",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                    trailing: Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    tileColor: Colors.blue[800],
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue[200]),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: ListTile(
                    title: Text("Login With Twitter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                    trailing: Icon(Icons.nordic_walking_outlined,color: Colors.white,),
                    tileColor: Colors.blue[200],
                  ))),
          SizedBox(
            height: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                  style: ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(Colors.red[800]),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: ListTile(
                      title: Text("Login With Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                    trailing: Icon(Icons.g_mobiledata_rounded,color: Colors.white,),
                    tileColor: Colors.red[800],
                  )))
        ],
      ),
    );
  }
}
