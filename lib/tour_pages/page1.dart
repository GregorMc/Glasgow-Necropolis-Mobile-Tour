import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/tour_pages/tour_pages_export.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/controllers/drawer.dart';
import 'package:glasgow_necropolis_tour/controllers/button_classes.dart';

typedef void OnError(Exception exception);

class Page1 extends StatefulWidget {
  @override
  Page1State createState() => new Page1State();
}

class Page1State extends State<Page1> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  String localFilePath;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: new DrawerOnly(),
        appBar: AppBar(
            title: Text(AppLocalizations.of(context).entrance,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              BackIconButton(),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                IconButton(
                    onPressed: () => audioCache.play('audio.mp3'),
                    iconSize: 20.0,
                    color: Colors.blue,
                    icon: Icon(Icons.play_arrow)
                ),
                IconButton(
                  onPressed: () => advancedPlayer.pause(),
                  iconSize: 20.0,
                  color: Colors.blue,
                  icon: Icon(Icons.pause),
                )
              ],
            )
        ),

        body:  ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Card(
              child: Image.asset('images/tour_images/gates_prototype.jpg'),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context).entranceText,
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
                    Text('''Walk through the gates and onto the bridge...''',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}