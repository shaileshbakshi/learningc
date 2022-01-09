import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:http/http.dart' as http;


class MCQ_Screen extends StatefulWidget {
  @override
  _MCQ_ScreenState createState() => _MCQ_ScreenState();
}

class _MCQ_ScreenState extends State<MCQ_Screen> {
  String fileContents;
  Future<String> _loadLocalHTML() async {
    final http.Response downloadData = await http.get("https://firebasestorage.googleapis.com/v0/b/learningc-967be.appspot.com/o/MCQ.html?alt=media&token=eccd083c-cc24-45fd-ac1c-427bb22edaf3");
    fileContents = downloadData.body;
    return fileContents;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadLocalHTML(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return WebviewScaffold(
            appBar: AppBar(title: Text("MCQ's"),
              centerTitle: true,
            ),
            withJavascript: true,
            appCacheEnabled: true,
            url: new Uri.dataFromString(snapshot.data, mimeType: 'text/html')
                .toString(),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("${snapshot.error}"),
            ),
          );
        }
        return Scaffold(body: Center(child: CircularProgressIndicator()),);
      },
    );
  }
}
