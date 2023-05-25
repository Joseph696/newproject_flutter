import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(home: bottomsheet()));
}

class bottomsheet extends StatelessWidget {
  const bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom sheet"),
      ),
      body: Center(
        child: GestureDetector(
            onLongPress: () => showsheet(context),
            child: Icon(
              Icons.share,
              size: 45,
              color: Colors.yellow,
            )),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp),
              title: Text("Message"),
            ),
          );
        });
  }
}
