import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: database_main(),
  ));
}

class database_main extends StatefulWidget {
  const database_main({Key? key}) : super(key: key);

  @override
  State<database_main> createState() => _database_mainState();
}

class _database_mainState extends State<database_main> {
  var names = [
    "anu",
    "sree",
    "appu",
    "achu",
    "dona",
    "anu",
    "sree",
    "appu",
    "achu",
    "dona",
    "anu",
    "sree",
    "appu",
    "achu",
    "dona",
    "anu",
    "sree",
    "appu",
    "achu",
    "dona",
  ];
  var number = [
    "123456789",
    "987654321",
    "123456789",
    "987465312",
    "12536984",
    "123456789",
    "987654321",
    "123456789",
    "987465312",
    "12536984",
    "123456789",
    "987654321",
    "123456789",
    "987465312",
    "12536984",
    "123456789",
    "987654321",
    "123456789",
    "987465312",
    "12536984",
  ];
  var images = [
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/whats.png",
    "assets/images/image-removebg-preview.png",
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/whats.png",
    "assets/images/image-removebg-preview.png",
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/whats.png",
    "assets/images/image-removebg-preview.png",
    "assets/images/6100287_don't panic_keep calm_meditation_yoga_icon.png",
    "assets/images/6643378_diet_fitness_meditation_retreat_yoga_icon.png",
    "assets/images/aperture-sharp-icon.png",
    "assets/images/whats.png",
    "assets/images/image-removebg-preview.png",
  ];

  var colours = [
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50,
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50,
  ];

  var col = [
    Colors.cyan,
    Colors.tealAccent,
    Colors.indigo,
    Colors.green,
    Colors.cyan,
    Colors.tealAccent,
    Colors.indigo,
    Colors.green,
    Colors.cyan,
    Colors.tealAccent,
    Colors.indigo,
    Colors.green,
    Colors.cyan,
    Colors.tealAccent,
    Colors.indigo,
    Colors.green,
    Colors.cyan,
    Colors.tealAccent,
    Colors.indigo,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CONTACTS")),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                //shrinkWrap: true,
                //physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.pink[colours[index]],
                    child: ListTile(
                      title: Text("${names[index]}"),
                      subtitle: Text("${number[index]}"),
                      leading: Image.asset(images[index]),
                      trailing: Icon(Icons.call),
                      //leading: CircleAvatar(backgroundImage: AssetImage(images[index]))
                    ),
                  );
                },
                itemCount: names.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 400,
                width: 300,
                child: ListView.builder(
                  //shrinkWrap: true,
                  //physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      color: col[index],
                      child: ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        title: Text("sfgshfbg",style: TextStyle(color: Colors.black,fontSize: 45),),
                        subtitle: Text("${number[index]}"),
                        leading: Image.asset(images[index]),
                        trailing: Icon(Icons.call),
                        //leading: CircleAvatar(backgroundImage: AssetImage(images[index]))
                      ),
                    );
                  },
                 // itemCount: names.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
