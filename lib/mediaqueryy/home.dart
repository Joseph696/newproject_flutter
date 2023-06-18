import 'package:flutter/material.dart';

import 'BigScreen.dart';
import 'mobilescreen.dart';

class homepagemedia extends StatefulWidget {
  const homepagemedia({super.key});

  @override
  State<homepagemedia> createState() => _homepagemediaState();
}

class _homepagemediaState extends State<homepagemedia> {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if (devicewidth < 600) {
      return MobileScreen();
    } else {
      return BigScreen();
    }
  }
}
