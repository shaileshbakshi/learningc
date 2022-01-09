import 'package:flutter/material.dart';
import 'package:learningc/Screen/I&QScreen.dart';
import 'package:learningc/Screen/MCQScreen.dart';
import 'package:learningc/Screen/SampleCodeScreen.dart';
import 'package:learningc/Screen/TutorialScreen.dart';
import 'Screen/HomePage.dart';
import 'res/TutorialChapters.dart';

void main() => runApp(new LearningC());

class LearningC extends StatefulWidget {
  @override
  _LearningCState createState() => _LearningCState();
}

class _LearningCState extends State<LearningC> {
  final appName = 'Learning C';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.-+
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
        primaryColor: Color.fromRGBO(0x11, 0x4B, 0x5F, 1),
        accentColor: Color.fromRGBO(0xF3, 0xE9, 0xD2, 1),
        focusColor: Color.fromRGBO(0xC6, 0xDA, 0xBF, 1),
        // Define the default font family.
        fontFamily: 'Georgia',
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          subtitle1: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0x11, 0x4B, 0x5F, 1)),
          subtitle2: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.bold,
              color: Colors.white),
          bodyText1: TextStyle(
              fontSize: 15.0, fontFamily: 'Georgia', color: Colors.black),
        ),
      ),
      routes: {
        '/': (context) => MyHomePage(title: appName),
        '/TutorialPage': (context) => TutorialScreen(),
        '/MCQScreen': (context) => MCQ_Screen(),
        '/SampleCode': (context) => SampleCodeScreen(),
        '/IQScreen': (context) => IQScreen(),
        '/chapter0': (context) => Introduction(),
        '/chapter1': (context) => Syntax(),
        '/chapter2': (context) => Variables(),
        '/chapter3': (context) => Ifelsestatement(),
        '/chapter4': (context) => switchcase(),
        '/chapter5': (context) => Whiledowhileloop(),
        '/chapter6': (context) => forloop(),
        '/chapter7': (context) => Array(),
        '/chapter8': (context) => Pointers(),
        '/chapter9': (context) => Strings(),
        '/chapter10': (context) => functions(),
        '/chapter11': (context) => Structure(),
        '/chapter12': (context) => Union(),
        '/chapter13': (context) => Enum(),
        '/chapter14': (context) => FileHandling()
      },
      initialRoute: '/',
    );
  }
}
