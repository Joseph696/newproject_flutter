import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homepage1(),
  ));
}

class homepage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  
       AppBar(
        
        
        title: const Text("WhatsApp",),
        backgroundColor: Colors.green,
        actions: [
          IconButton(icon: Icon(Icons.search),
          onPressed: (){},),
          IconButton(icon: Icon(Icons.settings),
          onPressed: (){},)
        ],
        
        
        
      ),
    
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        decoration: BoxDecoration
        (image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://i.pinimg.com/736x/b9/1d/c2/b91dc2113881469c07ac99ad9a024a01.jpg"),),) ,
        
        child: ListView(
          
          children: [
            SizedBox(height: 20,),
            Card(
              color: Colors.green[400],
              child: ListTile(
                title: Text("Hrithin madiwala"),
                subtitle: Text("7356875908"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fccj2-2.fna.fbcdn.net/v/t1.6435-9/93258637_2343386092627991_1943853450290790400_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_ohc=9cb7gZtwzgUAX9i7uN8&_nc_ht=scontent.fccj2-2.fna&oh=00_AfBnFOSGo5_YGzvSI35tCC2aeBzQyC9m0l68veoyPM8OGA&oe=6483FB72"),
                ),
                trailing: Icon(Icons.phone),
              ),
              
            ),
            Card
            ( color: Colors.purple[600],
              child: ListTile(
              
              title: Text ("Rahul"),
              subtitle: Text("data"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://scontent.fccj2-1.fna.fbcdn.net/v/t39.30808-6/326726064_528026256100163_2861724467828536848_n.jpg?stp=dst-jpg_s960x960&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=7IUSEj6lUyIAX99FO2d&_nc_ht=scontent.fccj2-1.fna&oh=00_AfAfrDYU-cgMdYHDbrhbTPj7oCTlRTm8lgDUZJ4NffMP-w&oe=64620496"),
              ),
              trailing: Icon(Icons.phone),
            )
            ),
            Card(
              color: Colors.amber[400],
              child: ListTile(
                title: Text("Athul Swiggy"),
                subtitle: Text ("7848245255"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://lh3.googleusercontent.com/NX7UYHUS_md7rGimC1-WRhjpYbqCXs0xiobiYB2DU1LWGaR2RtGbCQ_NWk5dMSBgAAmGKEVe6JID5-oggjxf7fkHeuwndwwPubL8QYY"),
                ),
                trailing: Wrap(
                  children : const[
                     Icon(Icons.phone),
                     SizedBox(width: 16,),
                     Icon(Icons.message),
                     
                  ],
                )
              ),
            ),
            Card(
              color: Colors.red,
              child: ListTile(
              subtitle :Text("123456"), 
              title : Text("Ayyappadas"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/590/236/png-transparent-computer-icons-man-icon-recruiter-business-desktop-wallpaper.png")),
              trailing: Icon(Icons.phone),
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
