import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BigScreen(),
  ));
}

class BigScreen extends StatelessWidget {
  const BigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(139, 195, 74, 1),
      appBar: AppBar(
        title: Text('Big Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                  
                    child: Container(
                      
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        color: Colors.purple,
                        height: 120,
                      ),
                    );
                  },
                  itemCount: 8,
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
