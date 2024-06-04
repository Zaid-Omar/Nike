import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projekt/pages/home.dart';
import 'package:projekt/pages/MyButtonNavBar.dart';


void main() {
  testWidgets('Home widget has correct scaffold', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));
    await tester.pumpAndSettle();

    expect(find.byType(Scaffold), findsWidgets, reason: 'Scaffold not found');
    expect(find.byType(MyButtonNavBar), findsOneWidget, reason: 'MyButtonNavBar not found');

    final Iterable<Element> scaffoldElements = find.byType(Scaffold).evaluate();
      for (Element element in scaffoldElements) {
      final Scaffold scaffold = tester.widget<Scaffold>(find.byElementPredicate((Element e) => e == element));
      expect(scaffold.backgroundColor, Colors.grey[300], reason: 'Scaffold background color is not correct');
    }
  });
}
