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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Glasgow Necropolis'),
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),

      drawer: new Drawer(
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget> [
              new DrawerHeader(
                child: new Text(AppLocalizations.of(context).title),
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



