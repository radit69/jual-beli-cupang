import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('App should render login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const CupanginApp());

    expect(find.text('Login'), findsWidgets);
    expect(find.text('Login to your account'), findsOneWidget);
  });
}
