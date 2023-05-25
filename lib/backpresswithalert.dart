import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Exitappalert(),
  ));
}

class Exitappalert extends StatelessWidget {
  // const Exitappalert({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("exit?"),
              content: Text("Do you really want to exit??"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes.")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("False")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("Cancel")),
                
              ],
            );
          });
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Exit from App"),
        ),
        body: Center(
          child: Text("press back button to exit"),
        ),
      ),
    );
  }
}
