import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:glasgow_necropolis_tour/map.dart';
import 'package:glasgow_necropolis_tour/drawer.dart';

class Tour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).tourIntro,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/necropolis_overview.jpg'),
            Text(AppLocalizations.of(context).tourIntroText,
                textAlign: TextAlign.center,
               ),
            RaisedButton(
              child: Text(AppLocalizations.of(context).start),
              elevation: 5,
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
        title: Text(
          AppLocalizations.of(context).entrance,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/gates_prototype.jpg'),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: Text(
                    AppLocalizations.of(context).entranceText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Tour()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
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

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double imageWidth = width * 1;

    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).bridgeSighs,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/bridgeofsighs.jpg', width: imageWidth),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(
                    AppLocalizations.of(context).bridgeSighsText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page4()),
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

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).entranceFacade,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/entrancefacade.jpg'),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(
                      AppLocalizations.of(context).entranceFacadeText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page5()),
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

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).williamMiller,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/williammillermonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(
                      AppLocalizations.of(context).williamMillerText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                    ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page4()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page6()),
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

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).lockhart,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/lockhartmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(AppLocalizations.of(context).lockhartText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                      ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page5()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page7()),
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

class Page7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).robertBlack,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/robertblackmausoleum.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(AppLocalizations.of(context).robertBlackText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                      ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page6()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page8()),
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

class Page8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).johnKing,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/johnkingmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(AppLocalizations.of(context).johnKingText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                      ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page7()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page9()),
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

class Page9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).archie,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/monteathmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2.2),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(AppLocalizations.of(context).archieText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                      ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page8()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page10()),
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

class Page10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).johnKnox,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/johnknoxmonument.jpg',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 2.2),
            new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  child: new Text(AppLocalizations.of(context).johnKnoxText,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                      ),
                )),
            BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).back),
                    elevation: 5,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Page9()),
                      );
                    },
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).seeMore),
                    //To Do
                    //more info button linking to more info page
                  ),
                  new RaisedButton(
                    child: Text(AppLocalizations.of(context).next),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LastPage()),
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

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        title: Text("Page 3",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(AppLocalizations.of(context).back),
        ),
      ),
    );
  }
}
