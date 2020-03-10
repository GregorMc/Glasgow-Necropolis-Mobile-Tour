import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/drawer_pages/map.dart';
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

class MapFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Row(
        children: <Widget>[
          Text(AppLocalizations.of(context).map),
          Icon(Icons.map)
        ],
      ),
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

class StopIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return new Icon(
        Icons.stop,
        size: 30,
        color: Colors.red,
      );
  }
}

class PlayIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Icon(
      Icons.play_arrow,
      size: 30,
      color: Colors.green,
    );
  }
}

/// Provides a blank line so text at the bottom of Cards is not overlapped with the BottomAppBar
class EmptySpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListTile(title: Text(''' '''));
  }
}

