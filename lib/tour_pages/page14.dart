import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/button_classes.dart';
import 'package:flutter_tts/flutter_tts.dart';
import'package:glasgow_necropolis_tour/tour_pages/page15.dart';

class Page14 extends StatefulWidget {
  @override
  Page14State createState() => Page14State();
}

class Page14State extends State<Page14> {
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
            title: Text('William Rae Wilson Monument 1849',
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
              child: Image.asset('images/tour_images/rae_wilson.jpg'),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text('''Designed by architect J A Bell.
An octagonal form Moorish style, similar to monuments in Palestine. 27ft high and made from liver-rock from the Binnie quarry. No wood, iron or lead has been used in the concealed joints.  
William Rae practiced as a solicitor and tookthe name Wilson when he inherited from his uncle john Wilson. 
He went east to recover  from the death of his wife who died 18 months after their marriage, and wrote the book 'Travels by Holy Land' He also wrote other admired travel books. 
He died in London but is burried here. ''',
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
                    Text('''Next monument...''',
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
                child: Text(AppLocalizations.of(context).next),
                onPressed: () {
                  ///if audio is playing, then stop
                  if (isPlaying) {
                    _stop();
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page15()),
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
    String audio = '''Designed by architect J A Bell.
An octagonal form Moorish style, similar to monuments in Palestine. 27ft high and made from liver-rock from the Binnie quarry. No wood, iron or lead has been used in the concealed joints.  
William Rae practiced as a solicitor and tookthe name Wilson when he inherited from his uncle john Wilson. 
He went east to recover  from the death of his wife who died 18 months after their marriage, and wrote the book 'Travels by Holy Land' He also wrote other admired travel books. 
He died in London but is burried here. ''';
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

