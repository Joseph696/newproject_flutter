import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:newproject_flutter/Mywidget.dart';

void main() {
  runApp(MaterialApp(
    home: Stag_two(),
  ));
}

class Stag_two extends StatelessWidget {
  var photo = [
    "assets/icons/ic_launcher.png",
    "assets/icons/302-3026464_png-file-svg-login-member-icon-png.png",
    "assets/icons/8656178_facebook watch_chatting_video_streaming_application_icon.png",
    "assets/icons/Picsart_23-05-07_15-07-10-916.png",
    "assets/icons/logooo.png",
     "assets/icons/ic_launcher.png",
    "assets/icons/302-3026464_png-file-svg-login-member-icon-png.png",
    "assets/icons/8656178_facebook watch_chatting_video_streaming_application_icon.png",
    "assets/icons/Picsart_23-05-07_15-07-10-916.png",
    "assets/icons/logooo.png",
     "assets/icons/ic_launcher.png",
    "assets/icons/302-3026464_png-file-svg-login-member-icon-png.png",
    "assets/icons/8656178_facebook watch_chatting_video_streaming_application_icon.png",
    "assets/icons/Picsart_23-05-07_15-07-10-916.png",
    "assets/icons/logooo.png",
     "assets/icons/ic_launcher.png",
    "assets/icons/302-3026464_png-file-svg-login-member-icon-png.png",
    "assets/icons/8656178_facebook watch_chatting_video_streaming_application_icon.png",
    "assets/icons/Picsart_23-05-07_15-07-10-916.png",
    "assets/icons/logooo.png",
  ];
  var ccount = [1, 2, 1, 1, 2, 3, 2, 2, 3, 1, 2, 3, 1, 3, 2, 1, 2, 3, 1, 2];
  //const Stag_two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(
            20,
            (index) => StaggeredGridTile.count(
                  crossAxisCellCount: ccount[index],
                  mainAxisCellCount: 1,
                  child: Mywidget(
                    image: Image.asset(photo[index]),
                    bcolor: Colors.teal,
                  ),
                )),
      ),
    ));
  }
}
