import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/drawer_pages/getting_there.dart';
import 'package:glasgow_necropolis_tour/drawer_pages/map.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasgow_necropolis_tour/main.dart';
import 'package:glasgow_necropolis_tour/drawer_pages/history.dart';
import'package:glasgow_necropolis_tour/tour_pages/page0.dart';


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
                      textAlign: TextAlign.center,),
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).home),
                    leading: Icon(Icons.home),

                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
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
                    title: Text("History"),
                    leading: Icon(Icons.library_books),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
                    },
                  ),

                  ListTile(
                    title: Text("Getting There"),
                    leading: Icon(Icons.departure_board),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GettingThere()));
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
