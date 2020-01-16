import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'de';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "title" : MessageLookupByLibrary.simpleMessage("Glasgow Nekropole"),
    "takeTheTour" : MessageLookupByLibrary.simpleMessage("Machen Sie die Tour"),
    "home" : MessageLookupByLibrary.simpleMessage("Zuhause"),
    "tourIntro" : MessageLookupByLibrary.simpleMessage("Tour Einführung"),
    "tourIntroText" : MessageLookupByLibrary.simpleMessage("Willkommen zur Glasgow Necropolis Mobile Tour. \n Bitte drücken Sie Start, um die Tour zu starten."),
    "start" : MessageLookupByLibrary.simpleMessage("Start"),
    "entrance" : MessageLookupByLibrary.simpleMessage("Die Eingangstore 1838"),
    "entranceText" : MessageLookupByLibrary.simpleMessage("Die Eingangstore wurden 1838 vom Architekten David Hamilton entworfen und von Edlington aus Gusseisen gefertigt. Die Tore sind mit dem Symbol des Kaufmannshauses (ein Clipper über der Welt) und dem Motto versehen. Gehe durch die Tore und auf die Brücke"),
    "back" : MessageLookupByLibrary.simpleMessage("Zurück"),
    "next" : MessageLookupByLibrary.simpleMessage("Nächster"),
    "seeMore" : MessageLookupByLibrary.simpleMessage("Mehr sehen"),
    "bridgeSighs" : MessageLookupByLibrary.simpleMessage("Die Seufzerbrücke 1834"),
    "bridgeSighsText" : MessageLookupByLibrary.simpleMessage("D & J Hamilton entwarf die Brücke über den Molindinar Burn, der jetzt unter der Wishart Street verläuft. Der Grundstein und die Zeitkapsel wurden auf die Friedhofsseite der Brücke gelegt, die aus drei Bögen besteht - einem 60 m langen Hauptbogen über dem Fluss und einem Bogen, der breit genug ist für Pferdefuhrwerk und der kleine dritte Bogen, der es der Mühlrasse ermöglichte, zur Subdean-Mühle zu gelangen. Fahren Sie weiter über die Brücke und schauen Sie geradeaus"),
    "entranceFacade" : MessageLookupByLibrary.simpleMessage("Die Eingangsfassade 1836"),
    "entranceFacadeText" : MessageLookupByLibrary.simpleMessage("Entworfen vom Architekten John Bryce. Der vorgesehene Eingang zu Katakomben, die durch die Nekropole verlaufen sollten. Mit der Verabschiedung des Anatomiegesetzes im Jahr 1832 wurde die Idee für Katakomben aufgegeben. Biegen Sie links ab und folgen Sie dem Hauptweg bis zum Miller Monument"),
    "williamMiller" : MessageLookupByLibrary.simpleMessage("William Miller Denkmal 1872"),
    "williamMillerText" : MessageLookupByLibrary.simpleMessage("Dies wurde dem Autor des berühmten Kinderliedes 'Wee Willie Winkie' errichtet. Er starb 1872 und wurde auf dem Tollcross-Friedhof beigesetzt. \n Fahren Sie fort, bis Sie zu den Stufen kommen, gehen Sie die Stufen hinauf und in der Nähe der Oberseite - schauen Sie nach rechts"),
    "allInfo" : MessageLookupByLibrary.simpleMessage("Alle Informationen"),
    "map" : MessageLookupByLibrary.simpleMessage("Karte"),
    "donate" : MessageLookupByLibrary.simpleMessage("Spenden"),
    "lockhart" : MessageLookupByLibrary.simpleMessage("Lockhart Denkmal 1842"),
    "lockhartText" : MessageLookupByLibrary.simpleMessage("Entworfen vom Londoner Architekten J Wallace. Er war Mrs. Lockharts Bruder. Eines der vielen gotischen Denkmäler in der Nekropole mit Engeln vorne und hinten. \n Biegen Sie am oberen Ende der Treppe rechts in eine gekrümmte Allee ein. Guck nach links"),
    "robertBlack" : MessageLookupByLibrary.simpleMessage("Robert Black mausoleum 1837"),
    "robertBlackText" : MessageLookupByLibrary.simpleMessage("Das erste auf dem Friedhof errichtete Mausoleum. Robert Black of Black und Wingate, Händler in Kelvinhaugh, bauten dies für seine Tochter Catherine, die im Alter von 12 Jahren starb. Fünf seiner Kinder starben vor dem 21. Lebensjahr. \n Geh weiter und sieh nach links"),
    "johnKing" : MessageLookupByLibrary.simpleMessage("John King Denkmal 1875"),
    "johnKingText" : MessageLookupByLibrary.simpleMessage("Ein imposantes Familiengewölbe mit polierten Peterhead-Granitsäulen und gusseisernen Toren. John King von Campsie und Leverhome war Partner bei Alum Works in der Nähe von Glasgow und schließlich Eigentümer von Cudbear Works in Glasgow. Er war auch Direktor des Merchants 'House und der Glasgow Chamber of Commerce. Fahren Sie weiter, bis Sie den Monteath auf der rechten Seite sehen"),
    "archie" : MessageLookupByLibrary.simpleMessage("Major Archibald Douglas Monteath Mausoleum 1842"),
    "archieText" : MessageLookupByLibrary.simpleMessage("Entworfen vom Architekten David Cousin. Das 30ft Durchmesser Mausoleum wird von einigen gedacht, um auf der Kirche von Str. Sepulchre in Cambridge zu basieren. Es gibt groteske Gesichter (jetzt stark erodiert) an der Tür und unter der Traufe und jedes Fensterdesign auf der unteren Ebene ist anders. Major Douglas Monteath war bei der East India Company und starb in Helensburgh. Monteaths Bruder wurde ebenfalls 1850 hier im darunter liegenden Gewölbe beigesetzt. \n Folgen Sie dem Pfad und biegen Sie links ab"),
    "johnKnox" : MessageLookupByLibrary.simpleMessage("John Knox Denkmal 1825"),
    "johnKnoxText" : MessageLookupByLibrary.simpleMessage("Designer W Warren, Architekt Thomas Hamilton, Bildhauer Robert Forrest. Eine 12 Fuß hohe Statue von John Knox, der eine Bibel in der linken Hand auf einer 58 Fuß hohen dorischen Säule hält. Dieses Denkmal wurde von James Carmichael auf dem als (Fir Park) bekannten Land erbaut, bevor der Friedhof gebaut wurde. Diese Säule ist von fast jedem Teil der Nekropole aus zu sehen. John Knox besuchte die St. Andrews University, wo er Ordensbriefe entgegennahm und in Edinburgh beerdigt ist."),


  };
}