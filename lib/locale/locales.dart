import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:glasgow_necropolis_tour/l10n/messages_all.dart';


class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
    locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get title {
    return Intl.message(
      'Glasgow Necropolis',
      name: 'title',
      desc: 'Title for the Glasgow Necropolis Application',
    );
  }

  String get takeTheTour {
    return Intl.message(
      'Take the Tour',
      name: 'takeTheTour',
      desc: 'Take the Tour heading',
    );
  }

  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'Homeheading',
    );
  }

  String get tourIntro {
    return Intl.message(
      'Tour Introduction',
      name: 'tourIntro',
      desc: 'tour intro heading',
    );
  }

  String get tourIntroText {
    return Intl.message(
      '\n Welcome to the Glasgow Necropolis Mobile Tour. \n If you get lost along the way, check the map on the top right of your screen \n Press start to begin the tour.',
      name: 'tourIntroText',
      desc: 'tour intro text',
    );
  }

  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: 'start',
    );
  }

  String get entrance {
    return Intl.message(
      'The Entrance Gates 1838',
      name: 'entrance',
      desc: 'entrance heading',
    );
  }

  String get entranceText {
    return Intl.message(
      'The entrance gates 1838 designed by architect, David Hamilton, and made by Edlington in cast iron. The gates have the Merchants House symbol (a clipper on top of the world) and motto.',
      name: 'entranceText',
      desc: 'entrance text',
    );
  }
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: 'back heading',
    );
  }

  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: 'next heading',
    );
  }

  String get seeMore {
    return Intl.message(
      'See more',
      name: 'seeMore',
      desc: 'see more button',
    );
  }

  String get bridgeSighs {
    return Intl.message(
      'The Bridge Of Sighs 1834',
      name: 'bridgeSighs',
      desc: 'The Bridge Of Sighs 1834 heading',
    );
  }

  String get bridgeSighsText {
    return Intl.message(
      'D & J Hamilton designed the bridge over the Molindinar Burn which now runs under Wishart St. The foundation stone and time capsule were laid on the cemetery side of bridge which comprises 3 arches - a 60m main arch over the river, then an archwide enough for horse and cart and the small, third arch, which allowed the millrace to get to Subdean Mill.',
      name: 'bridgeSighsText',
      desc: 'The Bridge Of Sighs 1834 text',
    );
  }

  String get entranceFacade {
    return Intl.message(
      'The Entrance Facade 1836',
      name: 'entranceFacade',
      desc: 'The Entrance Facade 1836 heading',
    );
  }

  String get entranceFacadeText {
    return Intl.message(
      'Designed by architect John Bryce. The intended entrance to catacombs which were to run through the Necropolis. When the Anatomy Act was passed in 1832 the idea for catacombs was abandoned.',
      name: 'entranceFacadeText',
      desc: 'The Entrance Facade 1836 text',
    );
  }

  String get williamMiller {
    return Intl.message(
      'William Miller Memorial 1872',
      name: 'williamMiller',
      desc: 'William Miller Memorial 1872 heading',
    );
  }

  String get williamMillerText {
    return Intl.message(
      'This was erected to the author of the famous nursery rhyme "Wee Willie Winkie". He died in 1872 and was burried in Tollcross cemetery.',
      name: 'williamMillerText',
      desc: 'William Miller Memorial 1872 text',
    );
  }

  String get allInfo {
    return Intl.message(
      'All Information',
      name: 'allInfo',
      desc: 'all info',
    );
  }

  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: 'map',
    );
  }

  String get donate {
    return Intl.message(
      'Donate',
      name: 'donate',
      desc: 'donate',
    );
  }

  String get lockhart {
    return Intl.message(
      'Lockhart Monument 1842',
      name: 'lockhart',
      desc: 'lockhart heading',
    );
  }

  String get lockhartText {
    return Intl.message(
      'Designed by London architect J Wallace. He was Mrs Lockhart''s brother. One of many Gothic monuments in the Necropolis with cherubs front and back. \n Turn right at the top of the steps up a curved avenue. Look left',
      name: 'lockhartText',
      desc: 'lockhart text',
    );
  }

  String get robertBlack {
    return Intl.message(
      'Robert Black mausoleum 1837',
      name: 'robertBlack',
      desc: 'robert black heading',
    );
  }

  String get robertBlackText {
    return Intl.message(
      'The first Mausoleum erected in the cemetery. Robert Black of Black and Wingate, merchants in Kelvinhaugh, built this for his daughter, Catherine, who died aged 12. Five of his children died before the age of 21. \n Keep going and look to your left',
      name: 'robertBlackText',
      desc: 'robert black text',
    );
  }

  String get johnKing {
    return Intl.message(
      'John king Monument 1875',
      name: 'johnKing',
      desc: 'john King heading',
    );
  }

  String get johnKingText {
    return Intl.message(
      'An imposing family vault with polished Peterhead granite columns and cast iron gates. John king of campsie and Leverhome was a partner in Alum Works near Glasgow and eventual owner of Cudbear Works in Glasgow. He was also a director of the Merchants''House and The Glasgow Chamber of Commerce.Continue onwards until you see the Monteath on your right',
      name: 'johnKingText',
      desc: 'john King text',
    );
  }

  String get archie {
    return Intl.message(
      'Major Archibald Douglas Monteath Mausoleum 1842',
      name: 'archie',
      desc: 'archie heading',
    );
  }

  String get archieText {
    return Intl.message(
      'Designed by architect David Cousin. The 30ft diameter Mausoleum is thought by some to be based on the church of St Sepulchre at Cambridge. There are grotesque faces (now badly eroded) on the doorway and under the eaves and every window design on the lower level is different. Major Douglas Monteath was with the East India Company and died in Helensburgh. Monteath''s brother was also buried here in the vault below in 1850. \n Follow the path round and turn left',
      name: 'archieText',
      desc: 'archie text',
    );
  }

  String get johnKnox {
    return Intl.message(
      'John Knox Monument 1825',
      name: 'johnKnox',
      desc: 'john knox heading',
    );
  }

  String get johnKnoxText {
    return Intl.message(
      'Designer W Warren, Architect Thomas Hamilton, Sculptor Robert Forrest A 12ft high statue of John Knox, holding a bible in his left hand on a 58ft high Doric column. This monument was built by James Carmichael on this land known as (Fir Park) before the cemetery was built. This column is seen from almost everypart of the Necropolis. John Knox went to St Andrews University where he took religious orders and is burried in Edinburgh.',
      name: 'johnKnoxText',
      desc: 'john knox text',
    );
  }

  String get startTour {
    return Intl.message(
      'Start Tour',
      name: 'startTour',
      desc: 'start tour button',
    );
  }

  String get gettingThere {
    return Intl.message(
      'Getting There',
      name: 'gettingThere',
      desc: 'Getting There',
    );
  }

  String get byFoot {
    return Intl.message(
      'By Foot',
      name: 'byFoot',
      desc: 'by foot',
    );
  }

  String get byPublic {
    return Intl.message(
      'By Public Transport',
      name: 'byPublic',
      desc: 'by public',
    );
  }

  String get byCar {
    return Intl.message(
      'By Car',
      name: 'byCar',
      desc: 'by car',
    );
  }

  String get location {
    return Intl.message(
      '''Glasgow Necropolis is located on the eastern edge of Glasgow City Centre and is open from 7.00am till 4:30pm daily. 
                           
The main gates lie behind St Mungo’s Museum of Religious Life and Art, and adjacent to Glasgow Cathedral. However there is a gate at Wishart Street and an entrance off John Knox Street opposite Cathedral House Hotel.
                           
The Postcode of the Necropolis is G4 0UZ.''',
      name: 'location',
      desc: 'location text',
    );
  }

  String get carDirections {
    return Intl.message(
      '''Exit the M8 at junction 15 and follow the signs for Glasgow Cathedral.

Pay-and-display car parks are available in the vicinity.''',
      name: 'carDirections',
      desc: 'car directions',
    );
  }

  String get walkDirections {
    return Intl.message(
      '''From George Square go north along the side of Queen Street Station until you come to High Street.

At the traffic lights, turn left and follow signs to Glasgow Cathedral til the next set of lights.

Cross the road at the junction with Castle Street. Look for the magnificent cast iron gates - the entrance to the Glasgow Necropolis just to the right of Glasgow Cathedral.''',
      name: 'walkDirections',
      desc: 'walk directions',
    );
  }

  String get publicDirections {
    return Intl.message(
      '''The nearest train station is Glasgow High Street – one stop from Queen Street Station.
Turn right out of the station and walk north up High Street to Glasgow Cathedral in Cathedral Precinct.

The Hop on Hop off Tourist Bus stops at the Cathedral and there are a number of buses which leave from the city centre that pass near to the Cathedral.

You can obtain information on buses and trains from Traveline Scotland’s website or app, First Bus Glasgow or National Rail Enquiries.''',
      name: 'publicDirections',
      desc: 'public directions',
    );
  }

}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es', 'ja', 'de'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) {
    return false;
  }
}