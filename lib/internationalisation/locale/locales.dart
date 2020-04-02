import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:glasgow_necropolis_tour/internationalisation/l10n/messages_all.dart';

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
      '''The Glasgow Necropolis is located very close to Glasgow Cathedral and is on one of the highest hills with great views over the City of Glasgow.

The Glasgow Necropolis covers 37 acres (15 hectares) and if you have limited time you can see 30 of the most special monuments and mausolea with this app. If you want to see more contact the Friends of Glasgow Necropolis to arrange a guided walking tour -  ''',
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
      '''The entrance gates 1838 designed by architect, David Hamilton, and made by Thomas Edington and Sons in cast iron. 
The gates have the Merchants House symbol (a clipper on top of the world) and motto.''',
    name: 'entranceText',
      desc: 'entrance text',
    );
  }

  String get entranceInstructions {
    return Intl.message(
      'Walk through the gates and onto the bridge...',
      name: 'entranceInstructions',
      desc: 'entrance instructions',
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

  String get bridgeSighs {
    return Intl.message(
      'The Bridge Of Sighs 1834',
      name: 'bridgeSighs',
      desc: 'The Bridge Of Sighs 1834 heading',
    );
  }

  String get bridgeSighsText {
    return Intl.message(
      'D & J Hamilton designed the bridge over the Molendinar Burn which now runs under Wishart St. The foundation stone and time capsule were laid on the cemetery side of the bridge which comprises 3 arches - a 60m main arch over the river, then an arch wide enough for horse and cart and the small, third arch, which allowed the millrace to get to Subdean Mill.',
      name: 'bridgeSighsText',
      desc: 'The Bridge Of Sighs 1834 text',
    );
  }

  String get bridgeSighsInstructions {
    return Intl.message(
      'Straight on and facing you...',
      name: 'bridgeSighsInstructions',
      desc: 'The Bridge Of Sighs 1834 instructions',
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

  String get entranceFacadeInstructions {
    return Intl.message(
      'Turn left and follow the main path...',
      name: 'entranceFacade',
      desc: 'The Entrance Facade 1836 instructions',
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
      'This was erected to the author of the famous nursery rhyme "Wee Willie Winkie". He died in 1872 and was buried in Tollcross cemetery.',
      name: 'williamMillerText',
      desc: 'William Miller Memorial 1872 text',
    );
  }

  String get williamMillerInstructions {
    return Intl.message(
      'Veer down left - follow this path until you reach steps leading up right and down left...',
      name: 'williamMiller',
      desc: 'William Miller Memorial 1872 instructions',
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
      'Designed by London architect J Wallace who was Mrs Lockhart''s brother. One of many Gothic monuments in the Necropolis with cherubs front and back.',
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

  String get robertBlackInstructions {
    return Intl.message(
      'Keep going and look to your left...',
      name: 'robertBlackInstructions',
      desc: 'robert black instructions',
    );
  }

  String get robertBlackText {
    return Intl.message(
      'The first Mausoleum erected in the cemetery. Robert Black of Black and Wingate, merchants in Kelvinhaugh, built this for his daughter, Catherine, who died aged 12. Five of his children died before the age of 21.',
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
      'An imposing family vault with polished Peterhead granite columns and cast iron gates. John King of Campsie and Leverhome was a partner in Alum Works near Glasgow and eventual owner of Cudbear Works in Glasgow. He was also a director of the Merchants''House and The Glasgow Chamber of Commerce.',
      name: 'johnKingText',
      desc: 'john King text',
    );
  }

  String get johnKingInstructions {
    return Intl.message(
      'Continue on up the path...',
      name: 'johnKingInstructions',
      desc: 'john King instructions',
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
      'Designed by architect David Cousin. The 30ft diameter Mausoleum is thought by some to be based on the Church of the Holy Sepulchre at Cambridge. There are grotesque faces (now badly eroded) on the doorway and under the eaves and every window design on the lower level is different. Major Douglas Monteath was with the East India Company and died in Helensburgh. Monteath''s brother was also buried here in the vault below in 1850.',
      name: 'archieText',
      desc: 'archie text',
    );
  }

  String get archieInstructions {
    return Intl.message(
      'Continue along the path and take the first left then the first right. On your left...',
      name: 'archieInstructions',
      desc: 'archie instructions',
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
      'Designer W Warren, Architect Thomas Hamilton, Sculptor Robert Forrest. A 12ft high statue of John Knox, the Father of the Reformation in Scotland, holding a bible in his left hand on a 58ft high Doric column. This monument was built by James Carmichael on this land known as (Fir Park) before the cemetery was built. This column is seen from almost every part of the Necropolis. John Knox went to St Andrews University where he took religious orders and is buried in Edinburgh.',
      name: 'johnKnoxText',
      desc: 'john knox text',
    );
  }

  String get johnKnoxInstructions {
    return Intl.message(
      'Continue along the path...',
      name: 'johnKnoxInstructions',
      desc: 'john knox instructions',
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
      '''Glasgow Necropolis is located on the eastern edge of Glasgow City Centre and is open from ''',
      name: 'location',
      desc: 'location text',
    );
  }

  String get location2 {
    return Intl.message(
      '''daily. 
                           
The main gates lie behind St Mungo’s Museum of Religious Life and Art, and adjacent to Glasgow Cathedral. However there is a gate at Wishart Street and an entrance off John Knox Street opposite Cathedral House Hotel.
                           
The Postcode of the Necropolis is ''',
      name: 'location2',
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

  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: 'history heading',
    );
  }

  String get tourComplete {
    return Intl.message(
      'Tour Complete',
      name: 'tourComplete',
      desc: 'tour complete heading',
    );
  }

  String get jews {
    return Intl.message(
      "Jewish Enclosure 1836",
      name: 'jews',
      desc: 'jew heading',
    );
  }

  String get jewsText {
    return Intl.message(
      ''''Designed by architect John Bryce.The design was inspired by Absalom's pillar, Jerusalem. There are various inscriptions (extract from the scriptures, Lord Byron's 'Hebrew Melodies') and symbols.
The first burial was Joseph Levi in 1832.''',
      name: 'jewsText',
      desc: 'jews Text',
    );
  }

  String get jewsInstructions {
    return Intl.message(
      '''Follow the path and go up the steps on the right. Near the top of the steps, look right...''',
      name: 'jewsInstructions',
      desc: 'jews heading',
    );
  }

  String get disclaimer {
    return Intl.message(
      '''In winter months (or any time of year) the weather can be unpredictable so please wear clothing and footwear suitable for some of the uneven and steep paths. 

If you have to rest please use some of the low walls to sit on. Please do not climb on the memorials and keep to the paths. 

Dogs must be kept on a leash. 

There are no toilet facilities apart from nearby St Mungo’s Museum. Cathedral House Hotel is nearby.''',
      name: 'disclaimer',
      desc: 'disclaimer',
    );
  }

  String get welcome {
    return Intl.message(
      '''Welcome to the Tour''',
      name: 'welcome',
      desc: 'welcome',
    );
  }

  String get lockhartInstructions {
    return Intl.message(
      '''Look left at the top of the steps...''',
      name: 'lockhartInstructions',
      desc: 'lockhart Instructions',
    );
  }

  String get ogilvie {
    return Intl.message(
      "Reverend Alexander Ogilvie Beattie Monument 1858",
      name: 'ogilvie',
      desc: 'ogilvie heading',
    );
  }

  String get ogilvieText {
    return Intl.message(
      '''Designed by the famous Glasgow architect Alexander 'Greek' Thomson for a minister who instigated the building of St Vincent St UP Church. Thomson is burried in Glasgow's Southern Necropolis.
The monument consists of an obelisk and urn, with a tomb chest on a base. ''',
      name: 'ogilvieText',
      desc: 'ogilvie Text',
    );
  }

  String get ogilvieInstructions {
    return Intl.message(
      '''Turn right and first left up a curved avenue. On the left...''',
      name: 'ogilvieInstructions',
      desc: 'ogilvie Instructions',
    );
  }

  String get dowanhill {
    return Intl.message(
      'Buchanan of Dowanhill Monument 1844',
      name: 'dowanhill',
      desc: 'dowanhill heading',
    );
  }

  String get dowanhillText {
    return Intl.message(
      '''Designed by architect James Brown. Sculptor James Shanks
Based on the Monument of Lysicrates - one of many in the Necropolis. The upper section consists of six Corinthian columns which surround a solid centre. The lower columns are simplified Corinthian. The top is capped by scrolls intended to support a tripod. ''',
      name: 'dowanhillText',
      desc: 'dowanhill text',
    );
  }

  String get dowanhillInstructions {
    return Intl.message(
      'Keep going up. Next on the left...',
      name: 'dowanhillInstructions',
      desc: 'dowanhill instructions',
    );
  }

  String get hutchison {
    return Intl.message(
      'Hutchison Family Mausoleum',
      name: 'hutchison',
      desc: 'hutchison heading',
    );
  }

  String get hutchisonText {
    return Intl.message(
      '''An imposing structure with interesting Moorish motifs on the cast iron gates.
The first burial was in 1849. An interesting incumbent is Francis Hay Thomson, MD, who was buried here on 26th April 1870.''',
      name: 'hutchisonText',
      desc: 'hutchison text',
    );
  }

  String get hutchisonInstructions {
    return Intl.message(
      'Carry on down the path and on the right in the corner...',
      name: 'hutchisonInstructions',
      desc: 'hutchison instructions',
    );
  }

  String get raeWilson {
    return Intl.message(
      'William Rae Wilson Monument 1849',
      name: 'raeWilson',
      desc: 'raeWilson heading',
    );
  }

  String get raeWilsonText {
    return Intl.message(
      '''Designed by architect J A Bell.

An octagonal form Moorish style, similar to monuments in Palestine. 27ft high and made from liver-rock from the Binnie quarry. No wood, iron or lead has been used in the concealed joints.  

William Rae practiced as a solicitor and took the name Wilson when he inherited from his uncle John Wilson. 

He went east to recover from the death of his wife who died 18 months after their marriage, and wrote the book 'Travels in the Holy Land' He also wrote other admired travel books. 

He died in London but is buried here. ''',
      name: 'raeWilsonText',
      desc: 'raeWilson text',
    );
  }

  String get raeWilsonInstructions {
    return Intl.message(
      '''Next monument...''',
      name: 'raeWilsonInstructions',
      desc: 'raeWilson instructions',
    );
  }

  String get houldsworth {
    return Intl.message(
      'John Houldsworth Family Mausoleum 1845',
      name: 'houldsworth',
      desc: 'houldsworth heading',
    );
  }

  String get houldsworthText {
    return Intl.message(
      '''Designed by architect and sculptor John Thomas. 
                     
On the right Charity carrying a child and on the left Hope with an anchor. Inside there are three marble figures - Faith in the centre with an angel on each side. 
                   
John Houldsworth established the Anderston Foundry Company and was a senior Baile of the City of Glasgow. ''',
      name: 'houldsworthText',
      desc: 'houldsworth text',
    );
  }

  String get houldsworthInstructions {
    return Intl.message(
      '''Turn right down the grassy pathand turn right back on to the main path. Continue straight through and turn left down towards the mausoleum. Before you reach it, take the first right. On your right...''',
      name: 'houldsworthInstructions',
      desc: 'houldsworth instructions',
    );
  }

  String get dalmoak {
    return Intl.message(
      'Aiken of Dalmoak Mausoleum',
      name: 'dalmoak',
      desc: 'dalmoak heading',
    );
  }

  String get dalmoakText {
    return Intl.message(
      '''Designed by architect James Hamilton.

This mausoleum is the largest in the cemetery. Restoration works were carried out in 2017. ''',
      name: 'dalmoakText',
      desc: 'dalmoak text',
    );
  }

  String get completionText {
    return Intl.message(
      '''Thank you for completing the Glasgow Necropolis Mobile Tour!
                      
If you enjoyed the tour, please consider leaving a donation.

All donations are hugely welcome and we do ask if you can be generous as all donations go entirely towards the conservation and restoration of the Glasgow Necropolis.''',
      name: 'completionText',
      desc: 'completion Text',
    );
  }

  String get books {
    return Intl.message(
      'Books & Guides',
      name: 'books',
      desc: 'books heading',
    );
  }

  String get booksText {
    return Intl.message(
      '''If you would like more information on any of the monuments you have seen today, check out our Books & Guides page''',
      name: 'booksText',
      desc: 'books text',
    );
  }

  String get firPark {
    return Intl.message(
      '''Fir Park – Now Glasgow Necropolis
''',
      name: 'firPark',
      desc: 'firPark heading',
    );
  }

  String get firParkText {
    return Intl.message(
      '''In 1650 the Merchants’ House bought the land, part of the estate of Wester Craigs, now known as the Glasgow Necropolis. As the west side was rocky and not able to be developed it was subsequently planted with fir trees and became known as Fir Park. However, in 1804, the Scots Firs in the park started to die and were replaced by mainly elm and willow and the area became a Victorian park and arboretum. In 1825 the foundation stone of the John Knox monument was laid in Fir Park.
''',
      name: 'firParkText',
      desc: 'firPark text',
    );
  }

  String get design {
    return Intl.message(
      '''The Design For Glasgow Necropolis
''',
      name: 'design',
      desc: 'design heading',
    );
  }

  String get designText1 {
    return Intl.message(
      '''In 1831, John Strang, Chamberlain at the Merchants’ House, wrote “Necropolis Glasguensis”, or “Thoughts on Death and Moral Stimulus” and commented:
''',
      name: 'designText1',
      desc: 'designText1 text',
    );
  }

  String get designTextItalics {
    return Intl.message(
      '''“The Fir Park appears admirably adapted for a Pere la Chaise, which would harmonise beautifully with the adjacent scenery, and constitute a solemn and appropriate appendage to the venerable structure (the Cathedral) in front of which, while it will afford a much wanted accommodation to the higher classes, would at the same time convert an unproductive property into a general and lucrative source of profit, to a charitable institution” it was to be “respectful to the dead, safe and sanitary to the living, dedicated to the Genius of Memory and to extend religious and moral feeling.”
''',
      name: 'designTextItalics',
      desc: 'designTextItalics',
    );
  }

  String get designText2 {
    return Intl.message(
      '''The Merchants’ House asked architect David Hamilton, Stuart Murray, Curator of the Botanical Gardens, and James Clelland, Superintendent of Public Works, to produce a feasibility study for forming the Glasgow Necropolis and in 1828 the committee of Directors of Lands and Quarries agreed to the proposal. In 1831, a competition for converting the Fir Park into a cemetery with 5 prizes of £10 – £50 was advertised in the newspapers. Sixteen plans were received and they were put on exhibition in the Dilettante Society’s Exhibition Rooms in Argyll Arcade. David Bryce of Edinburgh won first prize and his brother John Bryce of Glasgow second. The judges decided however that the work would best be undertaken by a landscape gardener. As a result, George Mylne was made Superintendent and head gardener and work began.
''',
      name: 'designText2',
      desc: 'designText2 text',
    );
  }

  String get victorian {
    return Intl.message(
      '''The Victorian Glasgow Necropolis
''',
      name: 'victorian',
      desc: 'victorian heading',
    );
  }

  String get victorianText {
    return Intl.message(
      '''This burial ground was always intended to be interdenominational and the first burial in 1832 was that of a Jew, Joseph Levi, a jeweller. In 1833 the first Christian burial was of Elizabeth Miles, stepmother of the Superintendent, George Mylne. After 1860, the first extensions east and south were to take up the Ladywell quarry and in 1877 and 1892/3, the final extensions to the north and south-east were constructed, doubling the size of the cemetery. The Necropolis is now 37 acres (15 ha).
                 
50,000 burials have taken place at the Necropolis and most of 3,500 tombs have been constructed up to 14 feet deep, with stone walls and brickpartitions. On the top of the Necropolis tombs were blasted out of the rockface. In 1877 the Molendinar Burn, running under the Bridge of Sighs, was culverted. This burn in which St Mungo was said to have fished for salmon is now underground on its way to the Clyde.
                 
The Necropolis was one of the few cemeteries to keep records of the dead, including profession, ages, sex and cause of death. In July 1878 the visitors book shows that 13,733 people visited the Glasgow Necropolis – 12,400 citizens and 1,333 other visitors.
                 
In 1966, the Merchants’ House gave the Necropolis to the Glasgow City Council which now administers and maintains it. The benches and grave surrounds have been removed and most of the area put to grass for maintenance purposes. There are monuments here designed by major architects and sculptors of the time, including Alexander ‘Greek’ Thomson, Charles Rennie Macintosh and JT Rochead, in every architectural style, created for the prominent and wealthy entrepreneurs of the ‘Second City of the Empire’.
                 
The Glasgow Necropolis still has a wonderful atmosphere and still attracts many visitors both locally and from all over the world.''',
      name: 'victorianText',
      desc: 'victorian text',
    );
  }

  String get you {
    return Intl.message(
      '''You are here''',
      name: 'you',
      desc: 'your location',
    );
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es', 'de', 'fr', 'nl', 'pt'].contains(locale.languageCode);
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