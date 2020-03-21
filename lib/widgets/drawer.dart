import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/pages/getting_there.dart';
import 'package:glasgow_necropolis_tour/pages/map.dart';
import 'package:glasgow_necropolis_tour/internationalisation/locale/locales.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasgow_necropolis_tour/main.dart';
import 'package:glasgow_necropolis_tour/pages/history.dart';
import'package:glasgow_necropolis_tour/pages/tour_pages/page0.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer (
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: ListView(
                children: [

                  ListTile(
                    title: Text(AppLocalizations.of(context).title,
                      textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 17))
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).home),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).history),
                    leading: Icon(Icons.library_books),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).takeTheTour),
                    leading: Icon(Icons.directions_walk),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Page0()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).map),
                    leading: Icon(Icons.map),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Map()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).gettingThere),
                    leading: Icon(Icons.departure_board),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GettingThere()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).books),
                    leading: Icon(Icons.library_books),
                    onTap: () async {
                      const urlBooks = 'https://www.glasgownecropolis.org/books-guides/';
                      if (await canLaunch(urlBooks)) {
                        await launch(urlBooks, forceWebView: true);
                      } else {
                        throw 'Error loading $urlBooks';
                      }
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).donate),
                    leading: Icon(Icons.attach_money),
                    onTap: () async {
                      const urlDonate = 'https://www.glasgownecropolis.org/donate/';
                      if (await canLaunch(urlDonate)) {
                        await launch(urlDonate, forceWebView: true);
                      } else {
                        throw 'Error loading $urlDonate';
                      }
                    },
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
}
