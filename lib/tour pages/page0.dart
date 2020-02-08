import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/controllers/drawer.dart';
import 'package:glasgow_necropolis_tour/tour pages/tour_pages_export.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:glasgow_necropolis_tour/controllers/button_classes.dart';

class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text("Welcome to the tour",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          MapIconButton(),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/necropolis_overview.jpg'),

            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: Card(
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[

                            Text('''The Glasgow Necropolis is located very close to Glasgow Cathedral and is on one of the highest hills with great views over the City of Glasgow.
The Glasgow Necropolis covers 37 acres (15 hectares) and if you have limited time you can see 30 of the most special monuments and mausolea with this app. If you want to see more contact the Friends of Glasgow Necropolis to arrange a guided walking tour -  ''',
                              style: TextStyle(fontSize: 16)
                            ),

                            InkWell(
                              child: Text("tours@glasgownecropolis.org",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),

                              ),
                              onTap: () async {
                                const urlBookTour = 'https://www.glasgownecropolis.org/tours-events/';

                                if (await canLaunch(urlBookTour)) {
                                  await launch(urlBookTour, forceWebView: true);
                                } else {
                                  throw 'Error loading $urlBookTour';
                                }
                              },
                            ),

                            Text(
                                '''
   
In winter months (or any time of year) the weather can be unpredictable so please wear clothing and footwear suitable for some of the uneven and steep paths. 
If you have to rest please use some of the low walls to sit on. Please do not climb on the memorials and keep to the paths. 
Dogs must be kept on a leash. 
There are no toilet facilities apart from nearby St Mungo’s Museum. Cathedral House Hotel is nearby.''',
                              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                    ),
                  ),
                ),
            ),



            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text("Quick Tour"),
                    elevation: 5,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                      },
                  ),
                  new RaisedButton(
                    child: Text("Full Tour"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
