import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/internationalisation/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/useful_buttons.dart';
import 'package:flutter_tts/flutter_tts.dart';
import'package:glasgow_necropolis_tour/pages/tour_pages/page11.dart';

/// *** See page1.dart for comments ***

class Page10 extends StatefulWidget {
  @override
  Page10State createState() => Page10State();
}

class Page10State extends State<Page10> {
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
            title: Text(AppLocalizations.of(context).dowanhill,
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
              child: Image.asset('images/tour_images/buchanan_dowanhill.jpg'),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text(AppLocalizations.of(context).dowanhillText,
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
                    Text(AppLocalizations.of(context).dowanhillInstructions,
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
            EmptySpace()
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
                child: Text(AppLocalizations.of(context).next),
                onPressed: () {
                  ///if audio is playing, then stop
                  if (isPlaying) {
                    _stop();
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page11()),
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
    String audio = AppLocalizations.of(context).dowanhillText;
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

