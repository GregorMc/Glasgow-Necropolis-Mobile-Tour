import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/tour.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      supportedLocales: [
        Locale('en', ""),
        Locale('es', ""),
        Locale('ja', ""),
      ],

      onGenerateTitle: (BuildContext context) =>
      AppLocalizations.of(context).title,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(
        title: 'Glasgow Necropolis Tour',
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/necroBG.jpg"),
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}

class DrawerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Drawer (
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/drawerHeaderBackground.jpg"),
                        fit: BoxFit.cover
                    )
                ),
                child: Text("Glasgow Necropolis Tour"),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: ListView(children: [
              ListTile(
                title: Text("Take the Tour"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Tour()));
                },
              ),

              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));                },
              )
            ]),
          )
        ],
      ),
    );
  }
}





