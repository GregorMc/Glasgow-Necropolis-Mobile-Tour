import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/controllers/button_classes.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/controllers/drawer.dart';
import 'package:glasgow_necropolis_tour/tour pages/tour_pages_export.dart';

class Page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).johnKnox,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          MapIconButton(),
          BackIconButton(),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/johnknoxmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2.2),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(AppLocalizations.of(context).johnKnoxText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  BackRaisedButton(),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}