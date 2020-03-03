import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/button_classes.dart';
import 'package:flutter_tts/flutter_tts.dart';
import'package:glasgow_necropolis_tour/tour_pages/page12.dart';

class Page11 extends StatefulWidget {
  @override
  Page11State createState() => Page11State();
}

class Page11State extends State<Page11> {
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
            title: Text('Hutchison Family Mausoleum',
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
              child: Image.asset('images/tour_images/hutchison.jpg'),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text('''An imposing structure with interesting Moorish motif on the cast iron gates.
First burial was in 1849 but an interesting incumbent is Francis Hay Thomson, MD who was buried 26th April 1870. ''',
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
                    Text('''Carry on down the path and on the right in the corner...''',
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
                    MaterialPageRoute(builder: (context) => Page12()),
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
    String audio = AppLocalizations.of(context).entranceText;
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

