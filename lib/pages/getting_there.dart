import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/internationalisation/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/text_expansion/expand_text.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/useful_buttons.dart';

class GettingThere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).gettingThere),
        actions: <Widget>[
          MapIconButton(),
          BackIconButton()
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(text: AppLocalizations.of(context).location),
                          TextSpan(text: '7.00am - 4.30pm ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                          TextSpan(text: AppLocalizations.of(context).location2),
                          TextSpan(text: 'G4 0UZ.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
                        ]
                    ),
                  ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.directions_walk, color: Colors.blue),
                      Text(AppLocalizations.of(context).byFoot,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
                  SizedBox(height: 8),
                  ExpandText(AppLocalizations.of(context).walkDirections,
                    textAlign: TextAlign.justify,
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
                  Row(
                    children: <Widget>[
                      Icon(Icons.directions_railway, color: Colors.blue),
                      Text(AppLocalizations.of(context).byPublic,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
                  SizedBox(height: 8),
                  ExpandText(AppLocalizations.of(context).publicDirections,
                    textAlign: TextAlign.justify,
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
                  Row(
                    children: <Widget>[
                      Icon(Icons.directions_car, color: Colors.blue),
                      Text(AppLocalizations.of(context).byCar,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
                  SizedBox(height: 8),
                  ExpandText(AppLocalizations.of(context).carDirections,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
