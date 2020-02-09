import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/all_info/history.dart';
import 'package:glasgow_necropolis_tour/controllers/drawer.dart';

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

      body: ListView(
        children: <Widget>[

          GestureDetector(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "History"
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
            },
          ),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  "All Info 2"
              ),
            ),
          ),

        ],
      ),

    );
  }
}