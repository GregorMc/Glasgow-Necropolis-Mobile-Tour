// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  Widget makeTestTestableWidget({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  /// Tests Drawer loads properly
  testWidgets('Load Drawer', (WidgetTester tester) async {
    Drawer drawer = Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            /// Every option in the side menu
            child: ListView(
                children: [

                  ListTile(
                      title: Text('tile 0',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 17))
                  ),

                  ListTile(
                    title: Text('tile 1'),
                    leading: Icon(Icons.home),
                    onTap: () {
                    },
                  ),

                  ListTile(
                    title: Text('tile 2'),
                    leading: Icon(Icons.library_books),
                    onTap: () {
                    },
                  ),

                  ListTile(
                    title: Text('tile 3'),
                    leading: Icon(Icons.directions_walk),
                    onTap: () {
                    },
                  ),

                  ListTile(
                    title: Text('tile 4'),
                    leading: Icon(Icons.map),
                    onTap: () {
                    },
                  ),

                  ListTile(
                    title: Text('tile 5'),
                    leading: Icon(Icons.departure_board),
                    onTap: () {
                    },
                  ),

                  ListTile(
                    title: Text('tile 6'),
                    leading: Icon(Icons.library_books),
                    onTap: ()  {
                    },
                  ),

                  ListTile(
                    title: Text('tile 7'),
                    leading: Icon(Icons.attach_money),
                    onTap: ()  {
                    },
                  ),
                ]
            ),
          )
        ],
      ),
    );

    await tester.pumpWidget(makeTestTestableWidget(child: drawer));

    expect(find.text('tile 1'), findsOneWidget);
    expect(find.byIcon(Icons.home), findsOneWidget);

    expect(find.text('tile 2'), findsOneWidget);
    expect(find.byIcon(Icons.library_books), findsNWidgets(2));

    expect(find.text('tile 3'), findsOneWidget);
    expect(find.byIcon(Icons.directions_walk), findsOneWidget);

    expect(find.text('tile 4'), findsOneWidget);
    expect(find.byIcon(Icons.map), findsOneWidget);

    expect(find.text('tile 5'), findsOneWidget);
    expect(find.byIcon(Icons.departure_board), findsOneWidget);

    expect(find.text('tile 6'), findsOneWidget);
    expect(find.byIcon(Icons.library_books), findsNWidgets(2));

    expect(find.text('tile 6'), findsOneWidget);
    expect(find.byIcon(Icons.attach_money), findsOneWidget);
  });
}
