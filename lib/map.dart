import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:glasgow_necropolis_tour/main.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context).map),
        actions: <Widget>[
          IconButton (
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),

      body: FlutterMap(
        options: new MapOptions(
          center: new LatLng(55.862554, -4.231027),
          zoom: 16.0,
        ),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://api.tiles.mapbox.com/v4/"
                "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiZ2xhc2dvd25lY3JvcG9saXN0b3VyIiwiYSI6ImNrNWNtM3F2ajAzNDIzZnMwOGd6eWNrNDMifQ.X5x659DbZxYDqdeoBksKDA',
              'id': 'mapbox.streets',
            },
          ),
          new MarkerLayerOptions(markers: [
            new Marker(
                width: 35.0,
                height: 35.0,
                point: new LatLng(55.862400, -4.235680),
                builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 30.0),
                      ),
                ),
              ),

              new Marker(
                width: 35.0,
                height: 35.0,
                point: new LatLng(55.862370, -4.234854),
                builder: (ctx) => new Container(
                  child: new IconButton(
                      icon: Icon(Icons.room, color: Colors.red, size: 30.0)
                  ),
                ),
              ),

            ]),
        ],
      ),
    );


  }


}