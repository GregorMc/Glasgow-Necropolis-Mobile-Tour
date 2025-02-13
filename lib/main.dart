import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:glasgow_necropolis_tour/internationalisation/locale/locales.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';

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
      /// Supported languages: English, Spanish, German, French, Dutch, Portuguese
      supportedLocales: [
        Locale('en', ""),
        Locale('es', ""),
        Locale('de', ""),
        Locale('fr', ""),
        Locale('nl', ""),
        Locale('pt', ""),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context).title,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.blue,
        textTheme: TextTheme(
          /// Text style used for bodies of text
          body1: TextStyle(fontSize: 16),
          /// Text style used for sub headings
          subtitle: TextStyle(fontSize: 14,
              fontWeight: FontWeight.bold)
        )
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
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocalizations.of(context).title)),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/tour_images/monteathmonument.jpg"),
              fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
