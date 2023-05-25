import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: expansiontile(),
  ));
}

class expansiontile extends StatelessWidget {
  const expansiontile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const ExpansionTile(
      title: Text("Colors"),
      subtitle: Text("Expand to view more"),
      children: [
        ListTile(
          title: Text("Amber"),
          leading: CircleAvatar(
            
            backgroundColor: Colors.amber,
            
          ),
        ),
        ListTile(
          title: Text("Orange"),
          leading: CircleAvatar(
            backgroundColor: Colors.orange,
          ),
        ),
        ListTile(
          title: Text("Purple"),
          leading: CircleAvatar(
            backgroundColor: Colors.purple,
          ),
        )
      ],
    ));
  }
}
