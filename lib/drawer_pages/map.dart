import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:glasgow_necropolis_tour/globals.dart' as globals;
import 'package:app_settings/app_settings.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/controllers/drawer.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:glasgow_necropolis_tour/tour_pages/tour_pages_export.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

class Map extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyLocationState();
  }
}

class MyLocationState extends State<Map> with TickerProviderStateMixin {
  AnimationController _controller;
  double _direction;
  double lat;
  double long;
  double necropolisLat;
  double necropolisLong;
  double _inZoom = 16.0;
  MapController mapController = new MapController();
  bool isMoving = false;

  final geolocator = Geolocator()..forceAndroidLocationManager = true;
  var locationOptions = LocationOptions(accuracy: LocationAccuracy.best, distanceFilter: 0);
  final GlobalKey<ScaffoldState> myKey = new GlobalKey<ScaffoldState>();

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

    FlutterCompass.events.listen((double direction) {
      setState(() {
        _direction = direction;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  _moveCamera() {
    isMoving = true;
    mapController.move(LatLng(necropolisLat, necropolisLong), _inZoom);
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

  @override
  Widget build(BuildContext context) {
    Widget _loadMap() {
      ///[Position Found Render Marker]
      if (lat != null && long != null) {
        return Expanded(
          child: new FlutterMap(
            mapController: mapController,
            options: new MapOptions(
              center: new LatLng(55.862554, -4.231027),
              zoom: _inZoom,
              plugins: [MarkerClusterPlugin()]
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

              MarkerClusterLayerOptions(
                maxClusterRadius: 70,
                size: Size(40,40),
                anchor: AnchorPos.align(AnchorAlign.center),
                fitBoundsOptions: FitBoundsOptions(padding: EdgeInsets.all(50)),
                markers: [
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.863559, -4.230897),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('alpha',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('alpha',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.861984, -4.232692),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('beta',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('beta',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.862488, -4.229281),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('epsilon',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('epsilon',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.861406, -4.230986),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('eta',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('eta',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.861488, -4.231783),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('theta',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('theta',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.861165, -4.233304),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('iota',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('iota',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.863290, -4.232810),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('lambda',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('lambda',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 55.0,
                      height: 35.0,
                      point: new LatLng(55.861747, -4.233590),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('omicron',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('omicron',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.862036, -4.232257),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('sigma',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('sigma',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  ),
                  new Marker(
                      width: 40.0,
                      height: 35.0,
                      point: new LatLng(55.862891, -4.231906),
                      builder: (ctx) => new Stack(
                        children: <Widget>[
                          Text('omega',
                            style: TextStyle(fontSize: 12,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                            ),
                          ),
                          Text('omega',
                            style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      )
                  )
                ],
                  builder: (context, markers) {
                  return Text('');
                  }
                ),

              MarkerClusterLayerOptions(
                maxClusterRadius: 35,
                size: Size(40,40),
                anchor: AnchorPos.align(AnchorAlign.center),
                fitBoundsOptions: FitBoundsOptions(padding: EdgeInsets.all(50)),
                markers: [
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.862400, -4.235593),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).entrance,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page1()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.862238, -4.233830),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).bridgeSighs,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page2()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.862157, -4.233188),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).entranceFacade,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page3()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.8627, -4.2331),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).williamMiller,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page4()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.863118, -4.232912),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: "Jews' Enclosure",
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page5()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.863616, -4.231904),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).lockhart,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page6()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.863042, -4.231947),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).robertBlack,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page7()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.862830, -4.232252),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).johnKing,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page8()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.861590, -4.232531),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).archie,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page9()));
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 35.0,
                    height: 35.0,
                    point: new LatLng(55.8627, -4.2320),
                    builder: (ctx) => new Container(
                      child: new IconButton(
                        icon: Icon(Icons.room, color: Colors.red, size: 35.0),
                        tooltip: AppLocalizations.of(context).johnKnox,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Page10()));
                        },
                      ),
                    ),
                  ),
                ],

                polygonOptions: PolygonOptions(
                  borderColor: Colors.red,
                    color: Colors.black12,
                    borderStrokeWidth: 2
                ),

                builder: (context, markers) {
                  return FloatingActionButton(
                    tooltip: ('Monument Markers'),
                    backgroundColor: Colors.red,

                    child: Text(markers.length.toString()),
                    onPressed: null,
                  );
                }
              ),

              new MarkerLayerOptions(
                markers: [
                  new Marker(
                    width: 50.0,
                    height: 50.0,
                    point: new LatLng(lat, long),
                    builder: (ctx) => new Container(
                      child: new Transform.rotate(
                        angle: ((_direction ?? 0) * (3.14159265359 / 180)),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.navigation,
                                  color: Colors.blue,
                                ),
                                tooltip: 'You are here',
                                onPressed: null),
                          ],
                        ),
                      ),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(30.0),
                        color: Colors.blue[100].withOpacity(0.7),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        );
      } else {
        setState(() {});

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

    /// return Map page build
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context).map,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      drawer: new DrawerOnly(),
      body: Column(
        children: <Widget>[
          _loadMap()
        ],
      ),

    );
  }
}
