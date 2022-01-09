import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:share/share.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, @required this.title}) : super(key: key);
  static const double BorderSize = 7.00;
  static const double CardElevation = 3.00;
  static const double CardSize = 175.00;
  static const double IconPadding = 25.00;
  static const double TextPadding = 15.00;
  static const double IconWidth = 70.00;
  static const double IconHeight = 70.00;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isDeviceConnected = false;
  StreamSubscription streamConnectionStatus;
  bool boolHasConnection = false;
  bool AuthSucess = false;
  bool tappedYes = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String text = '';
  String subject = '';

  static MobileAdTargetingInfo Targetinfo = new MobileAdTargetingInfo(
    keywords: <String>['programing', 'C', 'C++', 'python', 'Java'],
    contentUrl: 'https://flutter.io',
    childDirected: true,
    testDevices: <String>[],
  );

  _displaySnackBar(BuildContext context) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text('Please Turn on the Internet!'),
    ));
  }

  BannerAd _bannerAd;

  BannerAd createbannerAd() {
    return BannerAd(
        adUnitId: "ca-app-pub-4669051935817766/4052239851",
        size: AdSize.banner,
        targetingInfo: Targetinfo,
        listener: (MobileAdEvent event) {
          print("banner: $event");
        });
  }

  InterstitialAd myInterstitial;

  InterstitialAd CreateintersitialAd() {
    return InterstitialAd(
      adUnitId: "ca-app-pub-4669051935817766/5588930223",
      targetingInfo: Targetinfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
  }

  void listernfunction(ConnectivityResult result) async {
    debugPrint(result.toString());
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isDeviceConnected = await DataConnectionChecker().hasConnection;
      if (isDeviceConnected == true) {
        final FirebaseUser user = (await _auth.signInAnonymously()).user;
        assert(user != null);
        assert(user.isAnonymous);
        assert(!user.isEmailVerified);
        assert(await user.getIdToken() != null);
        final FirebaseUser currentUser = await _auth.currentUser();
        assert(user.uid == currentUser.uid);
        if (user != null) {
          setState(() {
            AuthSucess = true;
          });
          debugPrint("authientication sucuces");
          debugPrint("initilzing Ad mob");
          FirebaseAdMob.instance
              .initialize(appId: "ca-app-pub-4669051935817766~1334040772");
          _bannerAd = createbannerAd()
            ..load()
            ..show();
        } else {
          debugPrint("issue in authientication");
          setState(() {
            AuthSucess = false;
          });
        }
      }
      setState(() {
        boolHasConnection = true;
      });
    } else
      setState(() {
        boolHasConnection = false;
      });
  }

  @override
  void initState() {
    streamConnectionStatus =
        new Connectivity().onConnectivityChanged.listen(listernfunction);
    super.initState();
  }

  @override
  void dispose() {
    try {
      streamConnectionStatus?.cancel();
    } catch (exception, stackTrace) {
      print(exception.toString());
    } finally {
      _bannerAd.dispose();
      FirebaseAuth.instance.signOut();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MyHomePage.CardSize,
                    width: MyHomePage.CardSize,
                    child: Card(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(MyHomePage.BorderSize),
                      ),
                      elevation: MyHomePage.CardElevation,
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, '/TutorialPage'),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.IconPadding),
                              child: Image.asset(
                                'assets/Images/BookIcon.png',
                                width: MyHomePage.IconWidth,
                                height: MyHomePage.IconHeight,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(MyHomePage.TextPadding),
                              child: Text("Tutorial"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHomePage.CardSize,
                    width: MyHomePage.CardSize,
                    child: Card(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(MyHomePage.BorderSize),
                      ),
                      elevation: MyHomePage.CardElevation,
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          if (isDeviceConnected == true &&
                              boolHasConnection == true) {
                            CreateintersitialAd()
                              ..load()
                              ..show();
                            Navigator.pushNamed(context, '/MCQScreen');
                          } else
                            _displaySnackBar(context);
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.IconPadding),
                              child: Image.asset(
                                'assets/Images/McqIcon.png',
                                width: MyHomePage.IconWidth,
                                height: MyHomePage.IconHeight,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(MyHomePage.TextPadding),
                              child: Text("MCQ's"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MyHomePage.CardSize,
                    width: MyHomePage.CardSize,
                    child: Card(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(MyHomePage.BorderSize),
                      ),
                      elevation: MyHomePage.CardElevation,
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          if (isDeviceConnected == true &&
                              boolHasConnection == true) {
                            CreateintersitialAd()
                              ..load()
                              ..show();
                            Navigator.pushNamed(context, '/IQScreen');
                          } else
                            _displaySnackBar(context);
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                top: MyHomePage.IconPadding,
                              ),
                              child: Image.asset(
                                'assets/Images/InterviewIcon.png',
                                width: MyHomePage.IconWidth * 0.90,
                                height: MyHomePage.IconHeight * 0.90,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.TextPadding - 5,
                                  right: MyHomePage.TextPadding,
                                  bottom: MyHomePage.TextPadding),
                              child: Text(
                                ' Interview  Question',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHomePage.CardSize,
                    width: MyHomePage.CardSize,
                    child: Card(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(MyHomePage.BorderSize),
                      ),
                      elevation: MyHomePage.CardElevation,
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          if (isDeviceConnected == true &&
                              boolHasConnection == true) {
                            CreateintersitialAd()
                              ..load()
                              ..show();
                            Navigator.pushNamed(context, '/SampleCode');
                          } else
                            _displaySnackBar(context);
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.IconPadding),
                              child: Image.asset(
                                'assets/Images/SampleCode.png',
                                width: MyHomePage.IconWidth,
                                height: MyHomePage.IconHeight,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.TextPadding),
                              child: Text("Sample Code"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MyHomePage.CardSize,
                    width: MyHomePage.CardSize,
                    child: Card(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(MyHomePage.BorderSize),
                      ),
                      elevation: MyHomePage.CardElevation,
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => Share.share(
                            'Download Learning C App : https://www.amazon.com/dp/B087MD1W1W/ref=sr_1_2?dchild=1&keywords=Learning+C&qid=1587833097&s=mobile-apps&sr=1-2'), //debugPrint('taped'),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.IconPadding),
                              child: Icon(
                                Icons.share,
                                size: MyHomePage.IconWidth,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(MyHomePage.TextPadding),
                              child: Text("Share"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHomePage.CardSize,
                    width: MyHomePage.CardSize,
                    child: Card(
                      color: Theme.of(context).focusColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(MyHomePage.BorderSize),
                      ),
                      elevation: MyHomePage.CardElevation,
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: Text('are you sure?',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                    )),
                                actions: [
                                  FlatButton(
                                    onPressed: () => Navigator.pop(
                                        context, false), // passing false
                                    child: Text('No',
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                        )),
                                  ),
                                  FlatButton(
                                    onPressed: () => Navigator.pop(
                                        context, true), // passing true
                                    child: Text('Yes',
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                        )),
                                  ),
                                ],
                              );
                            }).then((exit) {
                          if (exit == null) return;
                          if (exit) {
                            SystemNavigator.pop(); // user pressed Yes button
                          } else {
                            // user pressed No button
                          }
                        }),
                        /* async {
                            final action =
                                await Dialogs.yesAbortDialog(context, 'exit', 'are you sure?');
                            if (action == DialogAction.yes) {
                              SystemNavigator.pop();
                            } else {
                                setState(() => tappedYes = false);
                              }
                            },*/
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.IconPadding),
                              child: Icon(
                                Icons.exit_to_app,
                                size: MyHomePage.IconWidth,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: MyHomePage.TextPadding),
                              child: Text("Exit"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
