import 'dart:math';
import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/vs.dart';
import 'package:flutter/material.dart';

class MyCodeView extends StatefulWidget {
  String codeContent;

  MyCodeView({Key key,@required this.codeContent}): super(key: key);
  @override
  MyCodeViewState createState() {
    return MyCodeViewState();
  }
}

class MyCodeViewState extends State<MyCodeView> {
  double _textScaleFactor = 1.0;

  List<Widget> _buildFloatingButtons() {
    return <Widget>[
      FloatingActionButton(
        heroTag: "zoom_out",
        child: Icon(Icons.zoom_out),
        tooltip: 'Zoom out',
        onPressed: () => setState(() {
          this._textScaleFactor = max(0.8, this._textScaleFactor - 0.1);
        }),
      ),
      FloatingActionButton(
        heroTag: "zoom_in",
        child: Icon(Icons.zoom_in),
        tooltip: 'Zoom in',
        onPressed: () => setState(() {
          this._textScaleFactor += 0.1;
        }),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(4.0),
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Scrollbar(
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: HighlightView(widget.codeContent,language: 'cpp', theme: vsTheme,padding: EdgeInsets.all(12),
                  // Specify text style
                  textStyle: TextStyle(fontFamily: 'monospace', fontSize: 10.0 + this._textScaleFactor,),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: _buildFloatingButtons(),
        colorStartAnimation: Theme.of(context).focusColor,
        colorEndAnimation: Theme.of(context).accentColor,
        animatedIconData: AnimatedIcons.menu_close,
      ),
    );
  }
}

class OutputView extends StatelessWidget {
  final String Output;

  const OutputView({Key key, this.Output}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(4.0),
          child: Container(
            constraints: BoxConstraints.expand(),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: HighlightView(Output,language: 'cpp', theme: vsTheme,padding: EdgeInsets.all(12),
                    // Specify text style
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}

const _TABS = <Widget>[
  Tab(
    child: ListTile(
     // contentPadding: I,
      leading: Icon(
        Icons.code,
        color: Colors.white,
      ),
      title: Text(
        'Code',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
  Tab(
    child: ListTile(
      leading: Icon(
        Icons.computer,
        color: Colors.white,
      ),
      title: Text(
        'Output',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
];


class DesignPreviewsPage extends StatelessWidget {
  final String Code;
  final String Output;
  const DesignPreviewsPage({Key key, @required this.Code ,@required this.Output}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: _TABS.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: Text("Code View"),
          bottom: TabBar(
            tabs: _TABS,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MyCodeView(codeContent: Code,),
            OutputView(Output: Output,)
          ],
        ),
      ),
    );
  }
}