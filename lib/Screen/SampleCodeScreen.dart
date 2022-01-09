import 'dart:convert';
import 'dart:async';
import '../res/model.dart';
import 'package:flutter/material.dart';
import '../res/SampleCodeUtill.dart';
import 'package:http/http.dart' as http;

class SampleCodeScreen extends StatefulWidget {
  @override
  _SampleCodeScreenState createState() => _SampleCodeScreenState();
}

class _SampleCodeScreenState extends State<SampleCodeScreen> {
  String fileContents;
  @override
  Future<List<dynamic>> loadsamplecode() async {
    final http.Response downloadData = await http.get(
        "https://firebasestorage.googleapis.com/v0/b/learningc-967be.appspot.com/o/SampleCode.json?alt=media&token=f2cd74f2-9c74-4e0b-aa21-30ffcfd4aab5");
    fileContents = downloadData.body;
    List<dynamic> JsonResponce = json.decode(fileContents);
    return JsonResponce;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          centerTitle: true,
          //automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Sample Code',
          ),
        ),
        body: new Container(
          child: FutureBuilder(
              future: loadsamplecode(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(8.0),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      SampleCode samplecode =
                          new SampleCode.fromJson(snapshot.data[index]);
                      return ExpansionTile(
                        title: Text(samplecode.CodeCategory),
                        backgroundColor: Theme.of(context).primaryColor,
                        children: samplecode.question
                            .map((data) => ListTile(
                                  title: Text(
                                    data.Question,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DesignPreviewsPage(
                                                Code: data.Code,
                                                Output: data.Output,
                                              ))),
                                ))
                            .toList(),
                      );
                    },
                  );
                }
                return Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                );
              }),
        ));
  }
}
