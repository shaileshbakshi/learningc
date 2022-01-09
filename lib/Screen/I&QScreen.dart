import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:http/http.dart' as http;

class IQScreen extends StatefulWidget {
  @override
  _IQScreenState createState() => _IQScreenState();
}

class _IQScreenState extends State<IQScreen> {
  String fileContents;
  Future<String> _loadLocalHTML() async {
    final http.Response downloadData = await http.get("https://firebasestorage.googleapis.com/v0/b/learningc-967be.appspot.com/o/IQuestion.html?alt=media&token=17608b73-03f4-42e7-b228-2f4dfa3d7b17");
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
            appBar: AppBar(title: Text("Interview Questions")),
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
        return Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

