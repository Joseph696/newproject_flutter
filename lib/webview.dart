import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: webview(),
  ));
}

class webview extends StatefulWidget {
  const webview({super.key});

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..loadRequest(Uri.parse('https://hammeronline.in/'))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hammer'),
      ),
      body: WebViewWidget(controller: controller)
    );
  }
}
