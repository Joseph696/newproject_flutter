import 'package:flutter/material.dart';
import 'package:newproject_flutter/secondpagecons.dart';

void main() {
  runApp(MaterialApp(
    home: Mainpage(),
  ));
}

class Mainpage extends StatelessWidget {
  String name = 'Luminar';
  //const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => StatelessPage(
                  v1: name,
                  v2: 'Kakkanad',
                  v3: 41847894791,
                ),
              )),
              child: const Text('Stateless Page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => StatelessPage(
                  v1: name,
                  v2: 'Vypin',
                  v3: 184154187851,
                ),
              )),
              child: const Text('Statefull Page'),
            )
          ],
        ),
      ),
    );
  }
}
