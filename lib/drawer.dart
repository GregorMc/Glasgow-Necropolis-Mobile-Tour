import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/tour.dart';
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Tour()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).allInfo),
                    leading: Icon(Icons.library_books),
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).map),
                    leading: Icon(Icons.map),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Map()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).donate),
                    leading: Icon(Icons.attach_money),
                    onTap: () async {
                      const urlDonate = 'https://www.glasgownecropolis.org/donate/';

                      if (await canLaunch(urlDonate)) {
                        await launch(urlDonate, forceWebView: false);
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
