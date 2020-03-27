import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/internationalisation/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/useful_buttons.dart';
import 'package:flutter_tts/flutter_tts.dart';
import'package:glasgow_necropolis_tour/pages/tour_pages/page2.dart';

/// *** COMMENTS FOR TOUR PAGE ONLY WRITTEN ONCE ON THIS PAGE AS LOGIC IS THE SAME THROUGHOUT ***

class Page1 extends StatefulWidget {
  @override
  Page1State createState() => Page1State();
}

class Page1State extends State<Page1> {
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
        /// Side menu
        drawer: new DrawerOnly(),
        appBar: AppBar(
          /// Title for monument page
            title: Text(AppLocalizations.of(context).entrance,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              /// Takes User back to previous page
              BackIconButton(),
            ],
            bottom: TabBar(
              /// Allows audio to be played or stopped
              tabs: <Widget>[
                playButton(context)
              ],
            )
        ),

        body:  ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Card(
              /// Monument image
              child: Image.asset('images/tour_images/gates_prototype.jpg'),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    /// Text for monument information
                    Text(AppLocalizations.of(context).entranceText,
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
                    /// Instructions on how to get to the next monument
                    Text(AppLocalizations.of(context).entranceInstructions,
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.blue),
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
              /// Back button to previous page
              BackRaisedButton(),
              /// Button takes user to Map
              MapFlatButton(),
              /// Button takes user to next page on the tour
              RaisedButton(
                child: Text(AppLocalizations.of(context).next),
                onPressed: () {
                  ///if audio is playing, then stop
                  if (isPlaying) {
                    _stop();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Play and Stop button for audio
  Widget playButton(BuildContext context) {
    /// audio is set to the text it is meant to read out
    String audio = AppLocalizations.of(context).entranceText;
    return  FlatButton(
      onPressed: () {
        setState(() {
          isPlaying ? _stop() : _speak(audio);
        });
      },
        /// If not playing, Play Button displayed
        /// If playing, Stop Button displayed
      child: isPlaying
          ? StopIcon()
          : PlayIcon()
    );
  }
}

