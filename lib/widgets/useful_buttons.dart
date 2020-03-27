import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/pages/map.dart';
import 'package:glasgow_necropolis_tour/internationalisation/locale/locales.dart';

/// Icon Button taking user to Map page
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

/// Flat Button taking user to Map page
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

/// Takes user to previous page
class BackIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new  IconButton(
      icon: new Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}

/// Takes user to previous page
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

/// Stop icon used in stop button
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

/// Play icon used on play button
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

