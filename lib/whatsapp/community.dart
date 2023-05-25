import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.grey),
    home: community(),
  ));
}

class community extends StatelessWidget {
  const community({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(5),color: Colors.white,
      child: Scaffold(
        
        backgroundColor: Color.fromARGB(255, 226, 223, 223),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            
            children: [
              Card(
                                child: ListTile(
                  title: Text("New Community"),
                  leading: CircleAvatar(child: Icon(Icons.people_alt),
                  
                  ),
                  
    
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: Text("Luminar Technolab - 2"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://exreed-prod.s3.ap-south-1.amazonaws.com/profile/1649058200.jpeg"),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("FLT March 2023"),
                  leading: CircleAvatar(child: Icon(Icons.people)),
                ),
              ),
             
              Card(
                child: ListTile(
                  title: Text("View all"),
                  leading: Icon(Icons.arrow_forward_ios),
                ),
              ),
               SizedBox(height: 10,),
              Card(
                child: ListTile(
                  title: Text("Party"),
                  leading: CircleAvatar(child: Icon(Icons.people_alt_sharp)),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Party party"),
                  leading: CircleAvatar(child: Icon(Icons.speaker_group_sharp)),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("PARTY FUND COLLECTION 2023"),
                  leading: CircleAvatar(child: Icon(Icons.money_sharp)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: Text("View all"),
                  leading: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
