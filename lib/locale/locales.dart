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
      'The entrance gates 1838 designed by architect, David Hamilton, and made by Edlington in cast iron. The gates have the Merchants House symbol (a clipper on top of the world) and motto. \n Walk through the gates and onto the bridge',
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
      'D & J Hamilton designed the bridge over the Molindinar Burn which now runs under Wishart St. The foundation stone and time capsule were laid on the cemetery side of bridge which comprises 3 arches - a 60m main arch over the river, then an archwide enough for horse and cart and the small, third arch, which allowed the millrace to get to Subdean Mill. \n Continue over the bridge and look straight on',
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
      'Designed by architect John Bryce. The intended entrance to catacombs which were to run through the Necropolis. When the Anatomy Act was passed in 1832 the idea for catacombs was abandoned. \n Turn left and follow the main path until you reach Miller Monument',
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
      'This was erected to the author of the famous nursery rhyme "Wee Willie Winkie". He died in 1872 and was burried in Tollcross cemetery. \n Continue until you come to steps, go up the steps and near the top - look right',
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