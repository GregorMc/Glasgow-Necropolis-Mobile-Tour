import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/expand_text.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/button_classes.dart';

class GettingThere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).gettingThere),
        actions: <Widget>[
          BackIconButton(),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(AppLocalizations.of(context).location),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.directions_walk),
                      Text(AppLocalizations.of(context).byFoot)
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
                      Icon(Icons.directions_railway),
                      Text(AppLocalizations.of(context).byPublic)
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
                      Icon(Icons.directions_car),
                      Text(AppLocalizations.of(context).byCar)
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
