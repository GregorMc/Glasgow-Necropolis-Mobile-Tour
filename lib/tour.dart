import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/main.dart';

class Tour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tour Introduction'),
      ),

      body: Center(
        child:  Column(
          children: <Widget>[

            Text("Welcome to the Glasgow Necropolis Mobile Tour.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text("Please press start to begin the tour.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            RaisedButton(
              child: Text('Start'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: new DrawerOnly(),

      appBar: AppBar(
        centerTitle: true,
        title: Text("The Entrance Gates 1838"),
      ),



      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/gates_prototype.jpg'),

            Text("The entrance gates 1838 designed by architect, David Hamilton, and made by Edlington in cast iron. The gates have the Merchants' House symbol (a clipper on top of the world) and motto.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Walk through the gates and onto the bridge",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

           new ButtonBar(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[

               new   RaisedButton(
                 child: Text("Back"),
                 elevation: 5 ,
                 onPressed: () {
                   Navigator.pop(
                     context,
                     MaterialPageRoute(builder: (context) => Tour()),
                   );
                 },
               ),

               new  RaisedButton(
                 child: Text("Next"),
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Page3()),
                   );
                 },
               ),

             ],
           ),

          ],
        ),
      ),
    );
  }
}



class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Bridge Of Sighs 1834"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/bridgeofsighs.jpg'),

            Text("D & J Hamilton designed the bridge over the Molindinar Burn which now runs under Wishart St. The foundation stone and time capsule were laid on the cemetery side of bridge which comprises 3 arches - a 60m main arch over the river, then an archwide enough for horse and cart and the small, third arch, which allowed the millrace to get to Subdean Mill.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Continue over the bridge and look straight on",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                new   RaisedButton(
                  child: Text("Back"),
                  elevation: 5 ,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                ),

                new  RaisedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page4()),
                    );
                  },
                ),

              ],
            ),



          ],
        ),
      ),
    );
  }

}


class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Entrance facade 1836"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Image.asset('images/entrancefacade.jpg'),

            Text("Designed by architect John Bryce. The intended entrance to catacombs which were to run through the Necropolis. When the Anatomy Act was passed in 1832 the idea for catacombs was abandoned.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Turn left and follow the main path until you reach Miller Monument",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                new   RaisedButton(
                  child: Text("Back"),
                  elevation: 5 ,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Page3()),
                    );
                  },
                ),

                new  RaisedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page5()),
                    );
                  },
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }

}


class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("William Miller Memorial 1872"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/williammillermonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),

            Text("This was erected to the author of the famous nursery rhyme 'Wee Willie Winkie'. He died in 1872 and was burried in Tollcross cemetery.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Continue until you come to steps, go up the steps and near the top - look right",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                new   RaisedButton(
                  child: Text("Back"),
                  elevation: 5 ,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Page4()),
                    );
                  },
                ),

                new  RaisedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page6()),
                    );
                  },
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }

}

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lockhart Monument 1842"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Image.asset('images/lockhartmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),

            Text("Designed by London architect J Wallace. He was Mrs Lockhart's brother. One of many Gothic monuments in the Necropolis with cherubs front and back.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Turn right at the top of the steps up a curved avenue. Look left",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

        new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            new   RaisedButton(
              child: Text("Back"),
              elevation: 5 ,
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Page5()),
                );
              },
            ),

            new  RaisedButton(
              child: Text("Next"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page7()),
                );
              },
            ),

          ],
        ),

          ],
        ),
      ),
    );
  }

}

class Page7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Robert Black Mausoleum 1837"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/robertblackmausoleum.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),

            Text("The first Mausoleum erected in the cemetery. Robert Black of Black and Wingate, merchants in Kelvinhaugh, built this for his daughter, Catherine, who died aged 12. Five of his children died before the age of 21.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Keep going and look to your left",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                new   RaisedButton(
                  child: Text("Back"),
                  elevation: 5 ,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Page6()),
                    );
                  },
                ),

                new  RaisedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page8()),
                    );
                  },
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }

}


class Page8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("John king Monument 1875"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/johnkingmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),

            Text("An imposing family vault with polished Peterhead granite columns and cast iron gates. John king of campsie and Leverhome was a partner in Alum Works near Glasgow and eventual owner of Cudbear Works in Glasgow. He was also a director of the Merchants' House and The Glasgow Chamber of Commerce.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Continue onwards until you see the Monteath on your right",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                new   RaisedButton(
                  child: Text("Back"),
                  elevation: 5 ,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Page7()),
                    );
                  },
                ),

                new  RaisedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page9()),
                    );
                  },
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }

}

class Page9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Major Archibald Douglas Monteath Mausoleum 1842"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/monteathmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2.2),
            Text("Designed by architect David Cousin. The 30ft diameter Mausoleum is thought by some to be based on the church of St Sepulchre at Cambridge. There are grotesque faces (now badly eroded) on the doorway and under the eaves and every window design on the lower level is different. Major Douglas Monteath was with the East India Company and died in Helensburgh. Monteath's brother was also buried here in the vault below in 1850.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("Follow the path round and turn left",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                new   RaisedButton(
                  child: Text("Back"),
                  elevation: 5 ,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Page8()),
                    );
                  },
                ),

                new  RaisedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page10()),
                    );
                  },
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }

}


class Page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("John Knox Monument 1825"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/johnknoxmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2.2),
            Text("Designer W Warren, Architect Thomas Hamilton, Sculptor Robert Forrest. A 12ft high statue of John Knox, holding a bible in his left hand on a 58ft high Doric column. This monument was built by James Carmichael on this land known as (Fir Park) before the cemetery was built. This column is seen from almost everypart of the Necropolis. John Knox went to St Andrews University where he took religous orders and is burried in Edinburgh.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            Text ("",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold)),

            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                new   RaisedButton(
                  child: Text("Back"),
                  elevation: 5 ,
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Page9()),
                    );
                  },
                ),

                new  RaisedButton(
                  child: Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LastPage()),
                    );
                  },
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

}



class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Center(

        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}