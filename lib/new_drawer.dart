import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Navdrawer(),
  ));
}

class Navdrawer extends StatelessWidget {
  const Navdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.teal),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("hridhin M"),
                accountEmail: Text("Hridhin.madi@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjb1MY0_8r5sY2GwPD-R41UMtZA8rG9NnpGSDKXh53wg&s"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn7iaP8Jz_8SOLrHQ8bElwm_DMVbYmCM8fCdHmTW8CPBNPdpZK-2ZZX04YuTJqIe2uFXA&usqp=CAU"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJBvGGHIBJ0j4QSA9YjO66sIBfua2biLvMhXtW71cHFYqOks4NWd-iqFX3DhJUmnSSliE&usqp=CAU"),
                  )
                ],
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("profile"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(Icons.g_mobiledata),
                title: Text("Mobile"),
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text("description"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.more),
                title: Text("More"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
