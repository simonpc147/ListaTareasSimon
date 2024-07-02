import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('SignInScreen loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the SignInScreen is displayed.
    expect(find.text('Ingresar'), findsOneWidget);
    expect(find.byType(TextField),
        findsNWidgets(2)); // Expecting two TextFields (email and password)
    expect(find.byType(ElevatedButton),
        findsOneWidget); // Expecting one ElevatedButton (Sign In)
    expect(find.byType(TextButton),
        findsOneWidget); // Expecting one TextButton (Register)
  });
}
