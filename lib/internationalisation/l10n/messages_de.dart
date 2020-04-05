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
    "tourIntroText" : MessageLookupByLibrary.simpleMessage('''Die Glasgow Necropolis befindet sich ganz in der Nähe der Glasgow Cathedral und auf einem der höchsten Hügel mit herrlichem Blick über die Stadt Glasgow.

Die Nekropole von Glasgow erstreckt sich über 15 Hektar. Wenn Sie nur über eine begrenzte Zeit verfügen, können Sie mit dieser App 30 besonders herausragende Denkmäler und Mausoleen sehen. Wenn Sie mehr sehen möchten, kontaktieren Sie die Freunde der Nekropole von Glasgow, um einen Spaziergang mit Fuehrung zu arrangieren - '''),
    "start" : MessageLookupByLibrary.simpleMessage("Start"),
    "entrance" : MessageLookupByLibrary.simpleMessage("Das Eingangstor 1838"),
    "entranceText" : MessageLookupByLibrary.simpleMessage('''Die Eingangstore 1838 wurden vom Architekten David Hamilton entworfen und von Thomas Edington and Sons aus Gusseisen hergestellt.

Die Tore haben das Merchants House-Symbol (ein Clipper oben auf der Welt) und das Motto. '''),
    "entranceInstructions" : MessageLookupByLibrary.simpleMessage('Gehe durch das Tor und auf die Brücke...'),
    "back" : MessageLookupByLibrary.simpleMessage("Zurück"),
    "next" : MessageLookupByLibrary.simpleMessage("Nächste"),
    "bridgeSighs" : MessageLookupByLibrary.simpleMessage("Die Seufzerbrücke 1834"),
    "bridgeSighsText" : MessageLookupByLibrary.simpleMessage("D & J Hamilton entwarf die Brücke über den Molendinar Burn, der jetzt unter der Wishart Street verläuft. Der Grundstein und die Zeitkapsel wurden auf der Friedhofsseite der Brücke gelegt, die aus 3 Bögen besteht - einem 60 m langen Hauptbogen über dem Fluss und einem breiten Bogen genug für Pferdewagen und den kleinen dritten Bogen, der es der Mühlenterrasse ermöglichte, zur Subdean Mill zu gelangen."),
    "bridgeSighsInstructions" : MessageLookupByLibrary.simpleMessage('Geradeaus und dir zugewandt...'),
    "entranceFacade" : MessageLookupByLibrary.simpleMessage("Die Eingangsfassade 1836"),
    "entranceFacadeInstructions" : MessageLookupByLibrary.simpleMessage("Biegen Sie links ab und folgen Sie dem Hauptweg..."),
    "entranceFacadeText" : MessageLookupByLibrary.simpleMessage("Entworfen vom Architekten John Bryce. Der vorgesehene Eingang zu Katakomben, die durch die Nekropole verlaufen sollten. Mit der Verabschiedung des Anatomiegesetzes im Jahr 1832 wurde die Idee für Katakomben aufgegeben."),
    "williamMiller" : MessageLookupByLibrary.simpleMessage("William Miller Denkmal 1872"),
    "williamMillerInstructions" : MessageLookupByLibrary.simpleMessage("Biegen Sie links ab - folgen Sie diesem Pfad, bis Sie die Stufen erreichen, die rechts oben und links unten führen..."),
    "williamMillerText" : MessageLookupByLibrary.simpleMessage("Dies wurde dem Autor des berühmten Kinderliedes 'Wee Willie Winkie' errichtet. Er starb 1872 und wurde auf dem Tollcross-Friedhof beigesetzt."),
    "allInfo" : MessageLookupByLibrary.simpleMessage("Alle Informationen"),
    "map" : MessageLookupByLibrary.simpleMessage("Karte"),
    "donate" : MessageLookupByLibrary.simpleMessage("Spenden"),
    "lockhart" : MessageLookupByLibrary.simpleMessage("Lockhart Denkmal 1842"),
    "lockhartText" : MessageLookupByLibrary.simpleMessage("Entworfen vom Londoner Architekten J Wallace. Er war Mrs. Lockharts Bruder. Eines der vielen gotischen Denkmäler in der Nekropole mit Engeln vorne und hinten. Biegen Sie am oberen Ende der Treppe rechts in eine gekrümmte Allee ein. Blicken Sie nach links."),
    "robertBlack" : MessageLookupByLibrary.simpleMessage("Robert Black mausoleum 1837"),
    "robertBlackText" : MessageLookupByLibrary.simpleMessage("Das erste auf dem Friedhof errichtete Mausoleum. Robert Black of Black und Wingate, Händler in Kelvinhaugh, bauten dies für seine Tochter Catherine, die im Alter von 12 Jahren starb. Fünf seiner Kinder starben vor dem 21. Lebensjahr."),
    "robertBlackInstructions" : MessageLookupByLibrary.simpleMessage("Gehen Sie weiter und blicken Sie nach links..."),
    "johnKing" : MessageLookupByLibrary.simpleMessage("John King Denkmal 1875"),
    "johnKingText" : MessageLookupByLibrary.simpleMessage("Ein imposantes Familiengewölbe mit polierten Peterhead-Granitsäulen und gusseisernen Toren. John King von Campsie und Leverhome war Partner bei Alum Works in der Nähe von Glasgow und später Eigentümer von Cudbear Works in Glasgow. Er war auch Direktor des Merchants 'House und der Glasgow Chamber of Commerce."),
    "johnKingInstructions" : MessageLookupByLibrary.simpleMessage("Folgen Sie dem Weg weiter..."),
    "archie" : MessageLookupByLibrary.simpleMessage("Major Archibald Douglas Monteath Mausoleum 1842"),
    "archieText" : MessageLookupByLibrary.simpleMessage("Entworfen vom Architekten David Cousin. Einige vertreten die Ansicht, dass das 30ft Durchmesser Mausoleum auf der Kirche von St. Sepulchre in Cambridge basiert. Es gibt groteske Gesichter (jetzt stark erodiert) an der Tür und unter der Traufe und jedes Fensterdesign auf der unteren Ebene ist anders. Major Douglas Monteath war bei der East India Company und starb in Helensburgh. Monteaths Bruder wurde ebenfalls 1850 hier im darunter liegenden Gewölbe beigesetzt."),
    "archieInstructions" : MessageLookupByLibrary.simpleMessage('''Folgen Sie dem Pfad und nehmen Sie die erste Straße links und dann die erste Straße rechts. Zu Ihrer Linken...'''),
    "johnKnox" : MessageLookupByLibrary.simpleMessage("John Knox Denkmal 1825"),
    "johnKnoxText" : MessageLookupByLibrary.simpleMessage("Designer W Warren, Architekt Thomas Hamilton, Bildhauer Robert Forrest. Eine 12 Fuß hohe Statue von John Knox, dem Vater der Reformation in Schottland, mit einer Bibel in der linken Hand auf einer 58 Fuß hohen dorischen Säule. Dieses Denkmal wurde von James Carmichael auf dem als (Fir Park) bekannten Land erbaut, bevor der Friedhof gebaut wurde. Diese Säule ist von fast jedem Teil der Nekropole aus zu sehen. John Knox besuchte die St. Andrews University, wo er Ordensbriefe entgegennahm und in Edinburgh beerdigt ist."),
    "johnKnoxInstructions" : MessageLookupByLibrary.simpleMessage("Folgen Sie dem Weg weiter..."),
    "startTour" : MessageLookupByLibrary.simpleMessage("Tour starten"),
    "gettingThere" : MessageLookupByLibrary.simpleMessage("Anreise"),
    "byFoot" : MessageLookupByLibrary.simpleMessage("Zu Fuß"),
    "byPublic" : MessageLookupByLibrary.simpleMessage("Mit öffentlichen Verkehrsmitteln"),
    "byCar" : MessageLookupByLibrary.simpleMessage("Mit dem Auto"),
    "location" : MessageLookupByLibrary.simpleMessage('''Die Glasgow Necropolis befindet sich am östlichen Rand des Stadtzentrums von Glasgow und ist täglich von '''),
    "location2" : MessageLookupByLibrary.simpleMessage(''' Uhr geöffnet.
                             
Die Haupttore befinden sich hinter dem St. Mungo Museum für religiöses Leben und Kunst und neben der Kathedrale von Glasgow. Es gibt jedoch ein Tor in der Wishart Street und einen Eingang in der John Knox Street gegenüber dem Cathedral House Hotel.
                             
Die Postleitzahl der Nekropole lautet '''),
    "carDirections" : MessageLookupByLibrary.simpleMessage('''Verlassen Sie die M8 an der Ausfahrt 15 und folgen Sie den Schildern zur Kathedrale von Glasgow.

In der Nähe stehen kostenpflichtige Parkplätze zur Verfügung.'''),
    "walkDirections" : MessageLookupByLibrary.simpleMessage('''Fahren Sie vom George Square entlang der Queen Street Station nach Norden, bis Sie zur High Street kommen.

Biegen Sie an der Ampel links ab und folgen Sie den Schildern zur Kathedrale von Glasgow bis zur nächsten Ampel.

Überqueren Sie die Straße an der Kreuzung mit der Castle Street. Suchen Sie nach dem prächtigen gusseisernen Tor - dem Eingang zur Nekropole von Glasgow rechts von der Kathedrale von Glasgow.'''),
    "publicDirections" : MessageLookupByLibrary.simpleMessage('''Der nächstgelegene Bahnhof ist Glasgow High Street - eine Haltestelle vom Bahnhof Queen Street entfernt.
Biegen Sie rechts vom Bahnhof ab und gehen Sie die High Street nach Norden zur Glasgow Cathedral im Cathedral Precinct.

Der Touristenbus Hop on Hop off hält an der Kathedrale und es gibt eine Reihe von Bussen, die vom Stadtzentrum abfahren und in die Nähe der Kathedrale fahren.

Informationen zu Bussen und Bahnen erhalten Sie auf der Website oder App von Traveline Scotland, First Bus Glasgow oder National Rail Inquiries.'''),
    "history" : MessageLookupByLibrary.simpleMessage("Geschichte"),
    "tourComplete" : MessageLookupByLibrary.simpleMessage("Tour abgeschlossen"),
    "jews" : MessageLookupByLibrary.simpleMessage("Jüdische Anlage 1836"),
    "jewsText" : MessageLookupByLibrary.simpleMessage('''Entworfen von dem Architekten John Bryce. Der Entwurf wurde von Absaloms Säule Jerusalem inspiriert. Es gibt verschiedene Inschriften (Auszug aus den heiligen Schriften, Lord Byrons 'Hebräische Melodien') und Symbole.
Die erste Beerdigung war Joseph Levi im Jahre 1832.'''),
    "jewsInstructions" : MessageLookupByLibrary.simpleMessage('''Folgen Sie dem Pfad und gehen Sie die Stufen rechts hinauf. Schauen Sie rechts oben auf der Treppe nach rechts...'''),
    "disclaimer" : MessageLookupByLibrary.simpleMessage('''In den Wintermonaten (oder zu jeder Jahreszeit) kann das Wetter unvorhersehbar sein. Tragen Sie daher bitte Kleidung und Schuhe, die für einige der unebenen und steilen Wege geeignet sind.

Wenn Sie sich ausruhen müssen, benutzen Sie bitte einige der niedrigen Wände, um darauf zu sitzen. Bitte klettern Sie nicht auf die Denkmäler und halten Sie sich an die Wege.

Hunde müssen an der Leine gehalten werden.

Außer dem nahe gelegenen St. Mungo Museum gibt es keine Toiletten. Das Cathedral House Hotel befindet sich in der Nähe.'''),
    "welcome" : MessageLookupByLibrary.simpleMessage('''Willkommen zur Tour'''),
    "lockhartInstructions" : MessageLookupByLibrary.simpleMessage('''Schauen Sie oben links nach ...'''),
    "ogilvie" : MessageLookupByLibrary.simpleMessage('Reverend Alexander Ogilvie Beattie Denkmal 1858'),
    "ogilvieText" : MessageLookupByLibrary.simpleMessage('''Entworfen vom berühmten Glasgow-Architekten Alexander 'Greek' Thomson für einen Minister, der den Bau der St. Vincent St UP Church initiierte. Thomson ist in Glasgows südlicher Nekropole begraben.
Das Denkmal besteht aus einem Obelisken und einer Urne mit einer Grabkiste auf einem Sockel.'''),
    "ogilvieInstructions" : MessageLookupByLibrary.simpleMessage('''Gehen Sie rechts und dann die erste links in eine kurvenreiche Straße. Links...'''),
    "dowanhill" : MessageLookupByLibrary.simpleMessage("Buchanan von Dowanhill Monument 1844"),
    "dowanhillText" : MessageLookupByLibrary.simpleMessage('''Entworfen vom Architekten James Brown. Bildhauer James Shanks
Basierend auf dem Denkmal des Lysikrates - eines von vielen in der Nekropole. Der obere Teil besteht aus sechs korinthischen Säulen, die ein festes Zentrum umgeben. Die unteren Spalten sind korinthisch vereinfacht. Die Oberseite wird von Schriftrollen abgedeckt, die ein Stativ tragen sollen.'''),
    "dowanhillInstructions" : MessageLookupByLibrary.simpleMessage('''Gehen Sie weiter nach oben. Als naechstes kommt links...'''),
    "hutchison" : MessageLookupByLibrary.simpleMessage('Mausoleum der Familie Hutchison'),
    "hutchisonText" : MessageLookupByLibrary.simpleMessage('''Eine imposante Struktur mit interessanten maurischen Motiven auf den gusseisernen Toren.
Die erste Beerdigung fand 1849 statt. Ein interessanter Amtsinhaber ist Dr. Francis Hay Thomson, der am 26. April 1870 hier beigesetzt wurde.'''),
    "hutchisonInstructions" : MessageLookupByLibrary.simpleMessage('''Folgen Sie dem Weg  nach unten und rechts in der Ecke...'''),
    "raeWilson" : MessageLookupByLibrary.simpleMessage("William Rae Wilson Denkmal 1849"),
    "raeWilsonText" : MessageLookupByLibrary.simpleMessage('''Entworfen vom Architekten J A Bell.

Eine achteckige Form im maurischen Stil, ähnlich den Denkmälern in Palästina. 27 Fuß hoch und aus Lebergestein aus dem Binnie-Steinbruch hergestellt. In den verdeckten Fugen wurde kein Holz, Eisen oder Blei verwendet.

William Rae praktizierte als Anwalt und nannte den Namen Wilson, als er von seinem Onkel John Wilson erbte.

Er ging nach Osten, um sich vom Tod seiner Frau zu erholen, die 18 Monate nach ihrer Heirat starb, und schrieb das Buch 'Reisen durch das Heilige Land'. Er schrieb auch andere bewunderte Reisebücher.

Er starb in London, ist aber hier begraben.'''),
    "raeWilsonInstructions" : MessageLookupByLibrary.simpleMessage('''Nächstes Denkmal...'''),
    "houldsworth" : MessageLookupByLibrary.simpleMessage("Mausoleum der Familie John Houldsworth 1845"),
    "houldsworthText" : MessageLookupByLibrary.simpleMessage('''Entworfen vom Architekten und Bildhauer John Thomas.
                     
Rechts Charity mit Kind und links Hope mit Anker. Im Inneren befinden sich drei Marmorfiguren - Glaube in der Mitte mit einem Engel auf jeder Seite.
                   
John Houldsworth gründete die Anderston Foundry Company und war Senior Baille der Stadt Glasgow.'''),
    "houldsworthInstructions" : MessageLookupByLibrary.simpleMessage('''Biegen Sie rechts auf den grasbewachsenen Weg ab und biegen Sie rechts wieder auf den Hauptweg ab. Fahren Sie geradeaus weiter und biegen Sie links ab in Richtung Mausoleum. Bevor Sie es erreichen, biegen Sie rechts ab. Zu Ihrer Rechten...'''),
    "dalmoak" : MessageLookupByLibrary.simpleMessage('Aiken des Dalmoak-Mausoleums'),
    "dalmoakText" : MessageLookupByLibrary.simpleMessage('''Entworfen vom Architekten James Hamilton.

Dieses Mausoleum ist das größte auf dem Friedhof. Restaurierungsarbeiten wurden im Jahr 2017 durchgeführt.'''),
    "completionText" : MessageLookupByLibrary.simpleMessage('''Vielen Dank, dass Sie die Glasgow Necropolis Mobile Tour abgeschlossen haben!
                      
Wenn Ihnen die Tour gefallen hat, können Sie eine Spende hinterlassen.

Alle Spenden sind herzlich willkommen und wir bitten Sie, großzügig zu sein, da alle Spenden ausschließlich für die Erhaltung und Wiederherstellung der Nekropole von Glasgow verwendet werden.'''),
    "books" : MessageLookupByLibrary.simpleMessage('Bücher & Anleitungen'),
    "booksText" : MessageLookupByLibrary.simpleMessage('''Wenn Sie weitere Informationen zu den Denkmälern wünschen, die Sie heute gesehen haben, besuchen Sie unsere Seite Bücher und Leitfäden'''),
    "firPark" : MessageLookupByLibrary.simpleMessage('''Fir Park - Jetzt Glasgow Necropolis
'''),
    "firParkText" : MessageLookupByLibrary.simpleMessage('''1650 kaufte das Merchants 'House das Land, das zum Anwesen von Wester Craigs gehört und heute als Glasgow Necropolis bekannt ist. Da die Westseite felsig war und nicht erschlossen werden konnte, wurde sie anschließend mit Tannen bepflanzt und als Tannenpark bekannt. Im Jahr 1804 begannen die schottischen Tannen im Park zu sterben und wurden hauptsächlich durch Ulmen und Weiden ersetzt. Das Gebiet wurde zu einem viktorianischen Park und Arboretum. 1825 wurde im Fir Park der Grundstein für das John Knox-Denkmal gelegt.
'''),
    "design" : MessageLookupByLibrary.simpleMessage('''Das Design für die Nekropole von Glasgow
'''),
    "designText1" : MessageLookupByLibrary.simpleMessage('''Im Jahr 1831 schrieb John Strang, Chamberlain im Merchants 'House, "Necropolis Glasguensis" oder "Gedanken über Tod und moralischen Anreiz" und kommentierte:
'''),
    "designTextItalics" : MessageLookupByLibrary.simpleMessage('''"Der Tannenpark scheint aussergewoehnlich für ein Pere la Chaise geeignet zu sein, das sich wunderbar in die angrenzende Landschaft einfügen würde und einen feierlichen und angemessenen Anhang zu der ehrwürdigen Struktur (der Kathedrale) darstellen würde, vor der sich eine begehrte Unterkunft bietet Für die höheren Klassen würde gleichzeitig ein unproduktives Eigentum in eine allgemeine und lukrative Gewinnquelle umgewandelt, in eine gemeinnützige Einrichtung. Es sollte „respektvoll gegenüber den Toten, sicher und hygienisch gegenüber den Lebenden sein, die dem Genie von gewidmet sind Erinnerung und religiöses und moralisches Gefühl zu erweitern."
'''),
    "designText2" : MessageLookupByLibrary.simpleMessage('''Merchants 'House bat den Architekten David Hamilton, Stuart Murray, Kurator des Botanischen Gartens, und James Clelland, Superintendent für öffentliche Arbeiten, eine Machbarkeitsstudie für die Bildung der Nekropole von Glasgow zu erstellen, und 1828 stimmte das Komitee der Direktoren für Land und Steinbrüche dem Antrag zu. 1831 wurde in den Zeitungen ein Wettbewerb für die Umwandlung des Tannenparks in einen Friedhof mit 5 Preisen von 10 bis 50 Pfund ausgeschrieben. 16 Pläne gingen ein und wurden in den Ausstellungsräumen der Dilettante Society in Argyll Arcade ausgestellt. David Bryce aus Edinburgh gewann den ersten Preis und sein Bruder John Bryce aus Glasgow den zweiten. Die Richter entschieden jedoch, dass die Arbeit am besten von einem Landschaftsgärtner ausgeführt werden sollte. Infolgedessen wurde George Mylne zum Superintendent und Chefgärtner ernannt, und die Arbeit begann.
'''),
    "victorian" : MessageLookupByLibrary.simpleMessage('''Die viktorianische Nekropole von Glasgow
'''),
    "victorianText" : MessageLookupByLibrary.simpleMessage('''Diese Grabstätte sollte immer konfessionsübergreifend sein, und die erste Beerdigung im Jahr 1832 war die eines Juden, Joseph Levi, eines Juweliers. 1833 wurde Elizabeth Miles, die Stiefmutter des Superintendenten George Mylne, zum ersten Mal christlich beerdigt. Nach 1860 sollten die ersten Erweiterungen nach Osten und Süden den Ladywell-Steinbruch aufnehmen, und 1877 und 1892/3 wurden die letzten Erweiterungen nach Norden und Südosten gebaut, wodurch sich die Größe des Friedhofs verdoppelte. Die Nekropole ist jetzt 15 ha groß.

50.000 Bestattungen fanden in der Nekropole statt und die meisten von 3.500 Gräbern wurden bis zu 14 Fuß tief mit Steinmauern und Ziegelwänden errichtet. Auf der Spitze der Nekropole wurden Gräber aus der Felswand gesprengt. 1877 wurde der Molendinar Burn, der unter der Seufzerbrücke verlief, durchlöchert. . Dieser Bach, in dem St. Mungo angeblich nach Lachs gefischt haben soll, befindet sich jetzt unter der Erde auf dem Weg zum Clyde.

Die Nekropole war einer der wenigen Friedhöfe, auf denen Aufzeichnungen über die Toten geführt wurden, einschließlich Beruf, Alter, Geschlecht und Todesursache. Im Juli 1878 zeigt das Gästebuch, dass 13.733 Menschen die Nekropole von Glasgow besuchten - 12.400 Bürger und 1.333 andere Besucher.

1966 übergab das Merchants 'House die Nekropole an den Stadtrat von Glasgow, der sie nun verwaltet und unterhält. Die Bänke und die Grabumrandung wurden entfernt und der größte Teil der Fläche zu Wartungszwecken auf Gras gelegt. Hier gibt es Denkmäler, die von bedeutenden Architekten und Bildhauern der damaligen Zeit entworfen wurden, darunter Alexander ‘Greek’ Thomson, Charles Rennie Macintosh und JT Rochead, in jedem Baustil, der für die prominenten und wohlhabenden Unternehmer der „Second City of the Empire“ geschaffen wurde.

Die Nekropole von Glasgow hat immer noch eine wundervolle Atmosphäre und zieht immer noch viele Besucher sowohl vor Ort als auch aus der ganzen Welt an.'''),
    "you" : MessageLookupByLibrary.simpleMessage('''Sie sind hier'''),

  };
}