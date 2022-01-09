import 'package:flutter/material.dart';
import '../res/chapterlist.dart';

class TutorialUtil extends StatelessWidget {
  final ChapterNumber;
  TutorialUtil({Key key, @required this.ChapterNumber}):assert(ChapterNumber !=null),super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Card(
        elevation: 4.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 4.0,
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/chapter${ChapterNumber}"); // ToDo  add push screen
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                    child: Text(
                      TutorialChapter[this.ChapterNumber],
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.chevron_right,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TutorialScreen extends StatefulWidget {
  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Tutorial'),
        //automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => TutorialUtil(ChapterNumber: index),
          itemCount: TutorialChapter.length,
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        ),
      )
    );
  }
}