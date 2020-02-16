import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/controllers/button_classes.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/controllers/drawer.dart';
import 'package:glasgow_necropolis_tour/tour_pages/tour_pages_export.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text("Entrance to the Jewish Enclosure 1836",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          BackIconButton(),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: Image.asset('images/tour_images/jews_enclosure.jpg'),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text('''Designed by architect John Bryce.The design was inspired by Absalom's pillar, Jerusalem. There are various inscriptions (extracts from scripture, Lord Byron's 'Hebrew Melodies') and symbols.
The first burial was Joseph Levi in 1832. 
                  ''',
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
                  Text(
                    '''Follow the path and go up the steps on the right. Near the top of the steps, look right...''',
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
            new RaisedButton(
              child: Text(AppLocalizations.of(context).next),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page6()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
