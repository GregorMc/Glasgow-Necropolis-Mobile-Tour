import 'package:flutter/material.dart';
import 'package:glasgow_necropolis_tour/tour.dart';
import 'package:glasgow_necropolis_tour/map.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:glasgow_necropolis_tour/locale/locales.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {

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
        Locale('de', ""),

      ],

      onGenerateTitle: (BuildContext context) =>
      AppLocalizations.of(context).title,
      theme: ThemeData(
        brightness: Brightness.light,
   //     primaryColor: Colors.redAccent[700],
        primaryColor: Colors.white,

      ),
      home: MyHomePage(
        title: ("Glasgow Necropolis"),
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
   // Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context).title)
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
            flex: 2,
            child: ListView(
                children: [

                  ListTile(
                    title: Text(AppLocalizations.of(context).title,
                    textAlign: TextAlign.center,),
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).home),
                    leading: Icon(Icons.home),

                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).takeTheTour),
                    leading: Icon(Icons.directions_walk),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Tour()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).allInfo),
                    leading: Icon(Icons.library_books),
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).map),
                    leading: Icon(Icons.map),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Map()));
                    },
                  ),

                  ListTile(
                    title: Text(AppLocalizations.of(context).donate),
                    leading: Icon(Icons.attach_money),
                    onTap: () async {
                      const urlDonate = 'https://www.glasgownecropolis.org/donate/';

                      if (await canLaunch(urlDonate)) {
                        await launch(urlDonate, forceWebView: false);
                      } else {
                        throw 'Error loading $urlDonate';
                      }
                    },
                  )


             ]
            ),
          )
        ],
      ),
    );
  }



}





