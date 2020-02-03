import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:glasgow_necropolis_tour/globals.dart' as globals;
import 'package:app_settings/app_settings.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/tour.dart';
import 'package:glasgow_necropolis_tour/drawer.dart';


class Map extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyLocationState();
  }
}

class MyLocationState extends State<Map> with TickerProviderStateMixin {
  AnimationController _controller;

  /// Icons List
  List<IconData> icons = [
    Icons.gps_fixed,
    Icons.room,
  ];

  final geolocator = Geolocator()..forceAndroidLocationManager = true;
  var locationOptions = LocationOptions(accuracy: LocationAccuracy.best, distanceFilter: 0);

  double lat;
  double long;
  double necropolisLat;
  double necropolisLong;
  double _inZoom = 16.0;
  MapController mapController = new MapController();
  bool isMoving = false;

  /// Alert box for User Permissions
  void _showDialog(String body) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Location Permission"),
            content: Text(body),
            actions: <Widget>[
              FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("Settings"),
                onPressed: () {
                  AppSettings.openLocationSettings();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  initState() {
    super.initState();
    if (long == null || lat == null) {
      _checkGPS();
    } else {
      localize();
    }

    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  _moveCamera() {
    isMoving = true;
    mapController.move(LatLng(necropolisLat, necropolisLong), _inZoom);
    icons[0] = Icons.gps_fixed;
  }

  _checkGPS() async {
    if (globals.lat != null && globals.long != null) {
      setState(() {
        lat = globals.lat;
        long = globals.long;
      });
    }
    var status = await geolocator.checkGeolocationPermissionStatus();
    bool isGPSOn = await geolocator.isLocationServiceEnabled();
    if (status == GeolocationStatus.granted && isGPSOn) {
      localize();

      _moveCamera();
    } else if (isGPSOn == false) {
      _showDialog("Turn On Your GPS");
      localize();
      _moveCamera();
    } else if (status != GeolocationStatus.granted) {
      await PermissionHandler()
          .requestPermissions([PermissionGroup.locationWhenInUse]);
      localize();
      _moveCamera();
    } else {
      _showDialog("Turn On Your GPS");
      await PermissionHandler()
          .requestPermissions([PermissionGroup.locationWhenInUse]);
      localize();
      _moveCamera();
    }
  }

  void localize() {
    geolocator.getPositionStream(locationOptions).listen((Position position) {
      /// To not call setState when this state is not active
      if (!mounted) {
        return;
      }
      if (mounted) {
        setState(() {
          this.lat = position.latitude;
          this.long = position.longitude;
          globals.long = long;
          globals.lat = lat;
        });
      }
    });
  }

  final GlobalKey<ScaffoldState> mykey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget _loadBuild() {
      ///[Position Found Render Marker]
      if (lat != null && long != null) {
        return Expanded(
          child: new FlutterMap(
            mapController: mapController,
            options: new MapOptions(
              center: new LatLng(55.862554, -4.231027),
              zoom: _inZoom,
            ),
            layers: [
              new TileLayerOptions(
                urlTemplate: "https://api.tiles.mapbox.com/v4/"
                    "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
                additionalOptions: {
                  'accessToken':
                  'pk.eyJ1IjoiaG91c3NlbXRuIiwiYSI6ImNqc3hvOG82NTA0Ym00YnI1dW40M2hjMjAifQ.VlQl6uacopBKX__qg6cf3w',
                  'id': 'mapbox.streets',
                },
              ),
              new MarkerLayerOptions(
                markers: [
                  new Marker(
                    width: 50.0,
                    height: 50.0,
                    point: new LatLng(lat, long),
                    builder: (ctx) => new Container(
                      child: Column(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.adjust,
                                color: Colors.blue,
                              ),
                              tooltip: 'You are here',
                              onPressed: null),
                        ],
                      ),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(30.0),
                        color: Colors.blue[100].withOpacity(0.7),
                      ),
                    ),
                  ),

                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.862400, -4.235680),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).entrance,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
                        },
                      ),
                    ),
                  ),

                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.862370, -4.234854),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).bridgeSighs,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        );
      } else {
        setState(() {
          icons[0] = Icons.gps_not_fixed;
        });

        ///Map shown if gps location not found or still loading
        return Expanded(
          child: new FlutterMap(
            mapController: mapController,
            options: new MapOptions(
              center: new LatLng(55.862554, -4.231027),
              zoom: _inZoom,
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
            ],
          ),
        );
      }
    }


    /// returned build
    return Scaffold(
      key: mykey,

      body: Column(
        children: <Widget>[
          _loadBuild()
        ],
      ),

      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            AppLocalizations.of(context).map,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),

    );
  }
}
