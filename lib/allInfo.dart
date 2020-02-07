import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/drawer.dart';

class AllInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(
          "All Information",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: Text(
                    "All Information page coming soon",
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                )),

          ],
        ),
      ),
    );
  }
}