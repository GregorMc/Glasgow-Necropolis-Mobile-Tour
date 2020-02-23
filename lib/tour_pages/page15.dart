import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/button_classes.dart';
import 'package:flutter_tts/flutter_tts.dart';
import'package:glasgow_necropolis_tour/tour_pages/page16.dart';

class Page15 extends StatefulWidget {
  @override
  Page15State createState() => Page15State();
}

class Page15State extends State<Page15> {
  bool isPlaying = false;
  FlutterTts _flutterTts;

  @override
  void initState() {
    super.initState();
    initializeTts();
  }

  @override
  void dispose() {
    super.dispose();
    _flutterTts.stop();
  }

  initializeTts() {
    _flutterTts = FlutterTts();

    _flutterTts.setStartHandler(() {
      setState(() {
        isPlaying = true;
      });
    });

    _flutterTts.setCompletionHandler(() {
      setState(() {
        isPlaying = false;
      });
    });

    _flutterTts.setErrorHandler((err) {
      setState(() {
        print("error occurred: " + err);
        isPlaying = false;
      });
    });
  }

  Future _speak(String text) async {
    if (text != null && text.isNotEmpty) {
      var result = await _flutterTts.speak(text);
      if (result == 1)
        setState(() {
          isPlaying = true;
        });
    }
  }

  Future _stop() async {
    var result = await _flutterTts.stop();
    if (result == 1)
      setState(() {
        isPlaying = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: new DrawerOnly(),
        appBar: AppBar(
            title: Text('John Houldsworth Family Mausoleum 1845',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              BackIconButton(),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                playButton(context)

              ],
            )
        ),

        body:  ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Card(
              child: Image.asset('images/tour_images/john_houldsworth.jpg'),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text('''Designed by architect and sculptor John Thomas. 
On the right Charity carrying a child and on the left Hope with an anchor. Inside there are three marble figures - Faith in the centre with an angel on each side. 
John Houldsworth established the Anderston Foundry Company and was a senior Baille of the city of Glasgow. ''',
                      style: Theme.of(context).textTheme.body1,
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text('''Turn right down the grassy pathand turn right back on to the main path. Continue straight through and turn left down towards the mausoleum. Before you reach it, take the first right. On your right...''',
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ///Empty space at bottom of page so tour information doesn't overlap BottomAppBar
            ListTile(title: Text(''' ''')),
          ],
        ),

        bottomSheet: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BackRaisedButton(),
              MapFlatButton(),
              RaisedButton(
                child: Text("next"),
                onPressed: () {
                  ///if audio is playing, then stop
                  if (isPlaying) {
                    _stop();
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page16()),
                  );
                },
              ),
            ],
          ),
        ),

      ),
    );
  }

  Widget playButton(BuildContext context) {
    String audio = '''Designed by architect and sculptor John Thomas. 
On the right Charity carrying a child and on the left Hope with an anchor. Inside there are three marble figures - Faith in the centre with an angel on each side. 
John Houldsworth established the Anderston Foundry Company and was a senior Baille of the city of Glasgow. ''';
    return  FlatButton(
        onPressed: () {
          setState(() {
            isPlaying ? _stop() : _speak(audio);
          });
        },
        child: isPlaying
            ? StopIcon()
            : PlayIcon()
    );
  }
}

