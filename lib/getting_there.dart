import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/controllers/expand_text.dart';
import 'package:glasgow_necropolis_tour/drawer.dart';

class GettingThere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text('Getting There'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                '''Glasgow Necropolis is located on the eastern edge of Glasgow City Centre and is open from 7.00am till 4:30pm daily. 

The main gates lie behind St Mungo’s Museum of Religious Life and Art, and adjacent to Glasgow Cathedral. However there is a gate at Wishart Street and an entrance off John Knox Street opposite Cathedral House Hotel.

The Postcode of the Necropolis is G4 0UZ.'''

              ),
            ),
          ),

          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                          Icons.directions_walk
                      ),
                      Text(
                        ' By Foot',
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  ExpandText(
                    '''
From George Square go north along the side of Queen Street Station until you come to High Street.
At the traffic lights, turn left and follow signs to Glasgow Cathedral til the next set of lights.
Cross the road at the junction with Castle Street. Look for the magnificent cast iron gates - the entrance to the Glasgow Necropolis just to the right of Glasgow Cathedral.''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),

          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                          Icons.directions_railway
                      ),
                      Text(
                        ' By Public Transport',
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  ExpandText(
                    '''The nearest train station is Glasgow High Street – one stop from Queen Street Station.
Turn right out of the station and walk north up High Street to Glasgow Cathedral in Cathedral Precinct.

The Hop on Hop off Tourist Bus stops at the Cathedral and there are a number of buses which leave from the city centre that pass near to the Cathedral.
You can obtain information on buses and trains from Traveline Scotland’s website or app, First Bus Glasgow or National Rail Enquiries.''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),

          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                          Icons.directions_car
                      ),
                      Text(
                        ' By Car',
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  ExpandText(
                    '''Exit the M8 at junction 15 and follow the signs for Glasgow Cathedral. 
Pay-and-display car parks are available in the vicinity.''',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}

//"\n Glasgow Necropolis is located on the eastern edge of Glasgow City Centre and is open from 7.00am till 4:30pm daily. \n\n The main gates lie behind St Mungo’s Museum of Religious Life and Art, and adjacent to Glasgow Cathedral. However there is a gate at Wishart Street and an entrance off John Knox Street opposite Cathedral House Hotel. \n\n\ The Postcode of the Necropolis is G4 0UZ.
//"
//,
