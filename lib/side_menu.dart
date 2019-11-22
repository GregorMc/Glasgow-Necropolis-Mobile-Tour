import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/main.dart';
import 'package:glasgow_necropolis_tour/tour.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),

      drawer: new Drawer(
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget> [
              new DrawerHeader(
                child: new Text('Glasgow Necropolis'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),

              new ListTile(
                title: new Text('Take the Tour'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tour()),
                  );
                },
              ),

              new ListTile(
                title: new Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) =>  Home()),
                  );
                },
              ),

            ],
          )
      ),
    );
  }
}