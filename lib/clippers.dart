import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: clippers1(),
  ));
}

class clippers1 extends StatelessWidget {
  const clippers1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Container(
              child: Align(
                  alignment: Alignment.center,
                  widthFactor: .5,
                  heightFactor: .8,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80")),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(120),
            child: Image.network(
                "https://images.unsplash.com/photo-1580892047528-7dfd384dce65?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80"),
          ),
          ClipOval(
            child: Align(
              widthFactor: .5,
              heightFactor: .7,
              child: Container(
                child: Image.network(
                    "https://images.unsplash.com/photo-1551737823-dfc8495904b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
              ),
            ),
          ),
          ClipPath(
            clipper: ParallelogramClipper(

            ),
            //borderRadius: BorderRadius.circular(200),
            child: Image.network(
              
                "https://images.unsplash.com/photo-1590071089561-2087ff1fc418?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=980&q=80"),
          )
        ],
      ),
    );
  }
}
