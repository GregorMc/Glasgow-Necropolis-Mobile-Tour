import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';
import 'package:glasgow_necropolis_tour/widgets/button_classes.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text('History'),
        actions: <Widget>[
          BackIconButton(),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                      '''Fir Park – Now Glasgow Necropolis
                      ''',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  Text(
                      '''In 1650 the Merchants’ House bought the land, part of the estate of Wester Craigs, now known as the Glasgow Necropolis. As the west side was rocky and not able to be developed it was subsequently planted with fir trees and became known as Fir Park. However, in 1804, the Scots Firs in the park started to die and were replaced by mainly elm and willow and the area became a Victorian park and arboretum. In 1825 the foundation stone of the John Knox monument was laid in Fir Park.
                      ''',
                      style: TextStyle(fontSize: 16)
                  )
                ],
              ),
            ),
          ),

          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                      '''The Design For Glasgow Necropolis
                      ''',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  Text('''In 1831, John Strang, Chamberlain at the Merchants’ House, wrote “Necropolis Glasguensis”, or “Thoughts on Death and Moral Stimulus” and commented:
                      ''',
                      style: TextStyle(fontSize: 16)
                  ),
                  Text('''
                  “The Fir Park appears admirably adapted for a Pere la Chaise, which would harmonise beautifully with the adjacent scenery, and constitute a solemn and appropriate appendage to the venerable structure (the Cathedral) in front of which, while it will afford a much wanted accommodation to the higher classes, would at the same time convert an unproductive property into a general and lucrative source of profit, to a charitable institution” it was to be “respectful to the dead, safe and sanitary to the living, dedicated to the Genius of Memory and to extend religious and moral feeling.”
                      ''',
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)
                  ),
                  Text('''The Merchants’ House asked architect David Hamilton, Stuart Murray, Curator of the Botanical Gardens, and James Clelland, Superintendent of Public Works, to produce a feasibility study for forming the Glasgow Necropolis and in 1828 the committee of Directors of Lands and Quarries agreed to the proposal. In 1831, a competition for converting the Fir Park into a cemetery with 5 prizes of £10 – £50 was advertised in the newspapers. Sixteen plans were received and they were put on exhibition in the Dilettante Society’s Exhibition Rooms in Argyll Arcade. David Bryce of Edinburgh won first prize and his brother John Bryce of Glasgow second. The judges decided however that the work would best be undertaken by a landscape gardener. As a result, George Mylne was made Superintendent and head gardener and work began.
                      ''',
                      style: TextStyle(fontSize: 16)
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
                  Text(
                      '''The Victorian Glasgow Necropolis
                      ''',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  Text('''This burial ground was always intended to be interdenominational and the first burial in 1832 was that of a Jew, Joseph Levi, a jeweller. In 1833 the first Christian burial was of Elizabeth Miles, stepmother of the Superintendent, George Mylne. After 1860, the first extensions east and south were to take up the Ladywell quarry and in 1877 and 1892/3, the final extensions to the north and south-east were constructed, doubling the size of the cemetery. The Necropolis is now 37 acres (15 ha).

50,000 burials have taken place at the Necropolis and most of 3,500 tombs have been constructed up to 14 feet deep, with stone walls and brickpartitions. On the top of the Necropolis tombs were blasted out of the rockface. In 1877 the Molendinar Burn, running under the Bridge of Sighs, was culverted. This burn in which St Mungo was said to have fished for salmon is now underground on its way to the Clyde.

The Necropolis was one of the few cemeteries to keep records of the dead, including profession, ages, sex and cause of death. In July 1878 the visitors book shows that 13,733 people visited the Glasgow Necropolis – 12,400 citizens and 1,333 other visitors.
In 1966, the Merchants’ House gave the Necropolis to the Glasgow City Council which now administers and maintains it. The benches and grave surrounds have been removed and most of the area put to grass for maintenance purposes. There are monuments here designed by major architects and sculptors of the time, including Alexander ‘Greek’ Thomson, Charles Rennie Macintosh and JT Rochead, in every architectural style, created for the prominent and wealthy entrepreneurs of the ‘Second City of the Empire’.

The Glasgow Necropolis still has a wonderful atmosphere and still attracts many visitors both locally and from all over the world.
            ''',
                      style: TextStyle(fontSize: 16)
                  ),
                ],
              ),
            ),
          ),




        ],
      )

    );
  }
}