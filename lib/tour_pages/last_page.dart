import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasgow_necropolis_tour/widgets/button_classes.dart';

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new DrawerOnly(),
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tourComplete,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            MapIconButton(),
            BackIconButton(),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text(AppLocalizations.of(context).completionText,
                      style: Theme.of(context).textTheme.body1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text(AppLocalizations.of(context).booksText,
                      style: Theme.of(context).textTheme.body1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomSheet: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Row(
                  children: <Widget>[
                    Text(AppLocalizations.of(context).donate),
                    Icon(Icons.attach_money)
                  ],
                ),
                onPressed: () async {
                  const urlDonate =
                      'https://www.glasgownecropolis.org/donate/';

                  if (await canLaunch(urlDonate)) {
                    await launch(urlDonate, forceWebView: true);
                  } else {
                    throw 'Error loading $urlDonate';
                  }
                },
              ),
              RaisedButton(
                child: Row(
                  children: <Widget>[
                    Text(AppLocalizations.of(context).books),
                    Icon(Icons.library_books)
                  ],
                ),
                onPressed: () async {
                  const urlBooks =
                      'https://www.glasgownecropolis.org/books-guides/';
                  if (await canLaunch(urlBooks)) {
                    await launch(urlBooks, forceWebView: true);
                  } else {
                    throw 'Error loading $urlBooks';
                  }
                },
              )
            ],
          ),
        )
    );
  }
}
