// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:glasgow_necropolis_tour/pages/history.dart';
import 'package:glasgow_necropolis_tour/main.dart';
import 'package:glasgow_necropolis_tour/widgets/drawer.dart';


void main() {

  Widget makeTestTestableWidget({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }
  testWidgets('loads drawer', (WidgetTester tester) async {
    Drawer drawer = Drawer();
    await tester.pumpWidget(makeTestTestableWidget(child: drawer));
  });
}
