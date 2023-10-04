import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card_registration_box.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: CarCardRegistrationBox(
        registration: 'sdasas',
      ),
    ),
  );

  testWidgets('init CarCardRegistrationBox', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    final Finder carCardRegistrationBoxFinder = find.byType(CarCardRegistrationBox);
    expect(carCardRegistrationBoxFinder, findsOneWidget);
  });

  testWidgets('init CarCardRegistrationBox with Text with right style and localKeys key', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    final Finder textFinder = find.byType(Text);
    expect(textFinder, findsOneWidget);
    final Iterable<Element> elements = textFinder.evaluate();
    final Text testWidget = elements.first.widget as Text;
    expect(testWidget.overflow, TextOverflow.ellipsis);
    expect(testWidget.data, LocaleKeys.car_registration);
  });
}
