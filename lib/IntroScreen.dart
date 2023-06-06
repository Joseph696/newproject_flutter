import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:newproject_flutter/Homepage.dart';
import 'package:newproject_flutter/logintest.dart';

void main() {
  runApp(MaterialApp(home: Intoscreen()));
}

class Intoscreen extends StatelessWidget {
  const Intoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pagedecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),
      bodyTextStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.orange,
          Colors.white,
          Colors.green
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight)
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pagedecoration,
            title: "Intro Page",
            body:
                "Use the first two lines of your app description to clarify the app. If it's an app about health, just start off with the words like: it's a state-of-the-art health management mobile app. You need to hook people up to your app by providing them clear, precise, and quick information about your app.07",
            image: introImage(
                "https://storage.googleapis.com/cdn-leanplum-images/1/2017/10/welcome-message-feature-min.jpg")),
        PageViewModel(
          decoration: pagedecoration,
            title: "Intro Page",
            body:
                "Use the first two lines of your app description to clarify the app. If it's an app about health, just start off with the words like: it's a state-of-the-art health management mobile app. You need to hook people up to your app by providing them clear, precise, and quick information about your app.07",
            footer: introImage(
                "https://www.innertrends.com/wp-content/uploads/2022/07/Webinar-Wrap-up_-Gia-3.png")),
        PageViewModel(
          decoration: pagedecoration,
            title: "Intro Page",
            body:
                "Use the first two lines of your app description to clarify the app. If it's an app about health, just start off with the words like: it's a state-of-the-art health management mobile app. You need to hook people up to your app by providing them clear, precise, and quick information about your app.07",
            image: introImage(
                "https://www.wildapricot.com/wp-content/uploads/2022/10/welcome-letter-to-new-members.png"))
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => homepage1())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => loginpage())),
      //showSkipButton: true,
      showBackButton: true,
      back: Text("Back"),
      //skip: Text("Skip"),
      next: Icon(Icons.arrow_forward_outlined),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
          size: Size(10, 12),
          color: Colors.purple,
          activeSize: Size(16, 12),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }

  Widget introImage(String image) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.network(
        image,
        width: 300,
      ),
    );
  }
}
