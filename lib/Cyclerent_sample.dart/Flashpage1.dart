import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    home: flashscreenone(),
  ));
}

class flashscreenone extends StatelessWidget {
  const flashscreenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
         decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.purpleAccent,
            Colors.yellow
          ]
        )
      ),
        child: PageView.builder(
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.network(
                  
                    "https://assets6.lottiefiles.com/packages/lf20_8fz0xapf.json",
                    
                    height: 200,
                    reverse: true,
                    repeat: true,
                    fit: BoxFit.cover),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Cyclo",
                  style: GoogleFonts.stalinistOne(
                    fontSize: 50,color: Colors.yellowAccent,fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text( "Rental Service", style: 
                    GoogleFonts.montserrat(fontSize: 25,
                    color: Color.fromARGB(255, 250, 250, 14),
                    
                      
                    )
                    // "Rental Service",
                    // style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.orange,
                    //     fontSize: 20),
                        
                  ),
                  
                ),
                SizedBox(height: 20),
                Padding(
                
                  padding: EdgeInsets.all(26) ,
                                  
                
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Padding(
                      
                        padding: const EdgeInsets.all(8.0), 
                      
                        child: ElevatedButton(style: 
                         ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        minimumSize:Size(180, 36) ),
                        
                        
                        
                          onPressed: (){},
                           child: Text("Login",
                           
                          
                        style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white, 
                        
                        ),
                        
                        ),),
                      )
                    ],
                  ),
                
                ),
                SizedBox(height: 25,),
                Center (child: Text("Not a member yet? SignUp now!!",style: GoogleFonts.montserrat(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white ),),
                ),
                ElevatedButton.icon(
        icon: const Icon(
          
          Icons.person_add_sharp,
          color: Colors.white,
        ),
        
        onPressed: (){},
        label: Text(
          "Sign Up",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white),
        ),
            ),],
              
            );
          },
        ),
      ),
    );
  }
}
