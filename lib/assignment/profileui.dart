import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //theme: ThemeData(primarySwatch: Colors.red),
    home: profileui(),
  ));
}

class profileui extends StatelessWidget {
  const profileui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_backspace_outlined,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 280),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              height: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://staticg.sportskeeda.com/editor/2022/12/ca210-16713592772825-1920.jpg?w=840"),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 280,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://www.kindpng.com/picc/m/57-571745_facebook-logo-circle-email-signature-facebook-icon-small.png",
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 86,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-twitter-social-media-round-icon-png-image_6315985.png",
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 51,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-linkedin-512.png"))),
                      ),
                    ),
                    SizedBox(
                      width: 85,
                      child: Container(
                        height: 63,
                        width: 62,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
              child: Text(
            "CBUM",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            "@cbum",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          )),
          Padding(padding: EdgeInsets.all(5)),
          Center(
              child: Text("Professional bodybuilder",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ))),
          Padding(padding: EdgeInsets.only(top: 30)),
          SizedBox(
            height: 320,
            width: 320,
          
           child :ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return Container(
                child: Column
                (children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    color: Color.fromARGB(255, 239, 234, 234),
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(
                        "privacy",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    color: Color.fromARGB(255, 239, 234, 234),
                    child: ListTile(
                      leading: Icon(Icons.history),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(
                        "Purchase history",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    color: Color.fromARGB(255, 239, 234, 234),
                    child: ListTile(
                      leading: Icon(Icons.help_outline_outlined),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(
                        "Help & support",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    color: Color.fromARGB(255, 239, 234, 234),
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(
                        "Settings",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    color: Color.fromARGB(255, 239, 234, 234),
                    child: ListTile(
                      leading: Icon(Icons.person_add_outlined),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(
                        "Invite a friend",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    color: Color.fromARGB(255, 239, 234, 234),
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(
                        "Logout",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                ]),
              );
            },
          ),
          )
        ],
      ),
    );
  }
}
