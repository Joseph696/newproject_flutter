import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: flash1(),
  ));
}

class flash1 extends StatefulWidget {
  const flash1({super.key});

  @override
  State<flash1> createState() => _flash1State();
}

class _flash1State extends State<flash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[900],
      //appBar: AppBar(
       // backgroundColor: Colors.blue[900],
     // ),
     
      body: Container(
        width: double.infinity,
        height: double.infinity,
        
        decoration: BoxDecoration(
             
       image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage("https://e0.pxfuel.com/wallpapers/161/862/desktop-wallpaper-iphone-13-pro-max-blue-pink.jpg"))),
          
          
        
        child: Center(
                child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              SizedBox(height: 200),

              Container(
              
                
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/4072/4072337.png",height: 200,width: 200,),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Text("Hello There...",style: TextStyle(color: Colors.white,fontSize: 35,),),
                    Text("Automatic identity verification which enable you to verify your identity",style: TextStyle(color: Colors.grey,fontSize: 10),)
                  ],
                  
                  
                  
                ),
          
                
      
            
              
              ),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: (){
                
              }, child: Text("Login"),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),primary: Color.fromARGB(255, 21, 33, 86),minimumSize: Size(245, 45)), ),
              SizedBox(height:20 ,),
              ElevatedButton(onPressed: (){}, child: Text("Sign up"),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),primary: Color.fromARGB(255, 21, 33, 86)
              ,minimumSize: Size(245, 45)),
              )
            ],
          
            
          ),
          
        ),
      ),
      
    );
  }
}
