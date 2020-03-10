import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/button_classes.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).history),
        actions: <Widget>[
          BackIconButton(),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(AppLocalizations.of(context).firPark,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  Text(AppLocalizations.of(context).firParkText,
                      style: TextStyle(fontSize: 16)
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
                  Text(AppLocalizations.of(context).design,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  Text(AppLocalizations.of(context).designText1,
                      style: TextStyle(fontSize: 16)
                  ),
                  Text(AppLocalizations.of(context).designTextItalics,
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)
                  ),
                  Text(AppLocalizations.of(context).designText2,
                      style: TextStyle(fontSize: 16)
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
                  Text(AppLocalizations.of(context).victorian,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  Text(AppLocalizations.of(context).victorianText,
                      style: TextStyle(fontSize: 16)
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}