import 'package:flutter/material.dart';

class Mywidget extends StatelessWidget {
  final Color? bcolor;
  final Image? image;
  VoidCallback? onpress;
  Widget? label;

  Mywidget({this.bcolor, required this.image, this.label, this.onpress});
  //const Mywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bcolor,
      child: ListTile(
        title: label,
        leading: image,
        onTap: onpress,
      ),
    );
  }
}
