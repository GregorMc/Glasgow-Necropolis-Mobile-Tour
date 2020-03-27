import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/internationalisation/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasgow_necropolis_tour/widgets/useful_buttons.dart';
import 'package:glasgow_necropolis_tour/pages/tour_pages/page1.dart';

class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new DrawerOnly(),
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).welcome,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          actions: <Widget>[
            MapIconButton(),
            BackIconButton(),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Card(
              child: Image.asset('images/necropolis_overview.jpg'),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text(AppLocalizations.of(context).tourIntroText,
                      style: Theme.of(context).textTheme.body1),
                    /// Link to book a tour has been made to look like a hyperlink
                    InkWell(
                      child: Text('''tours@glasgownecropolis.org''',
                        style: TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline)),
                      onTap: () async {
                        const urlBookTour = 'https://www.glasgownecropolis.org/tours-events/';
                        if (await canLaunch(urlBookTour)) {
                          await launch(urlBookTour, forceWebView: true);
                        } else {
                          throw 'Error loading $urlBookTour';
                        }
                      },
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
                    Text(AppLocalizations.of(context).disclaimer,
                      style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
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
              new RaisedButton(
                child: Text(AppLocalizations.of(context).startTour),
                elevation: 5,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()),
                  );
                },
              ),
            ],
          ),
        )
    );
  }
}

