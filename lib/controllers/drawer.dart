import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/allInfo.dart';
import 'package:glasgow_necropolis_tour/getting_there.dart';
import 'package:glasgow_necropolis_tour/tour pages/tour_pages_export.dart';
import 'package:glasgow_necropolis_tour/map.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasgow_necropolis_tour/main.dart';

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
                    title: Text(AppLocalizations.of(context).allInfo),
                    leading: Icon(Icons.library_books),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AllInfo()));
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
                  )
                ]
            ),
          )
        ],
      ),
    );
  }
}