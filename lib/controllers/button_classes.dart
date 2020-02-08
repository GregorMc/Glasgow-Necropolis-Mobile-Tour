import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/map.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';

class MapIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new IconButton(
      icon: Icon(Icons.map),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Map()),
        );
      },
    );
  }
}

class BackIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new  IconButton(
      icon: new Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}

class BackRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: Text(AppLocalizations.of(context).back),
      elevation: 5,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
