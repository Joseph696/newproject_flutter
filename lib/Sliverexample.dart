import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.indigo),
    home: sliverexample(),
  ));
}

class sliverexample extends StatelessWidget {
  const sliverexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,// make it scrollable
            pinned: true,// make it not scrollable
            title: Text("Sliver Appbar"),
            bottom: AppBar(
              elevation: 1,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(decoration: InputDecoration(
                  hintText: "search here",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt)
                ),),
              ),

            ),
          ),
          SliverList(delegate: 
          SliverChildBuilderDelegate((context, index) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(15)
              ),
              height: 100,
              child: Center(child: Text("Inside sliver child $index")),
            ),
          ),
          childCount: 20))
        ],
      ),
    );
  }
}