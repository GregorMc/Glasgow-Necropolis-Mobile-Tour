import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/controllers/button_classes.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/controllers/drawer.dart';
import 'package:glasgow_necropolis_tour/tour pages/tour_pages_export.dart';

class Page9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).archie, maxLines: 2,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)
        ),
        actions: <Widget>[
          BackIconButton(),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: Image.asset('images/monteathmonument.jpg', fit: BoxFit.fitWidth, height: MediaQuery.of(context).size.height / 2),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context).archieText,
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
                    '''
Instructions

''',
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
        ],
      ),

      bottomSheet:  BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BackRaisedButton(),
            LostFlatButton(),
            new RaisedButton(
              child: Text(AppLocalizations.of(context).next),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page10()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}