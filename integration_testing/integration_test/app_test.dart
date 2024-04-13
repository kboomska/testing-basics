import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_testing/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('app test', () {
    testWidgets(
      'adding 20 and 58.2 and gets number from the service',
      (widgetTester) async {
        app.main();

        await widgetTester.pumpAndSettle();

        final topTextFieldFinder =
            find.byKey(const Key('textField_top_Addition'));
        final bottomTextFieldFinder =
            find.byKey(const Key('textField_bottom_Addition'));

        await widgetTester.enterText(topTextFieldFinder, '20');
        await Future.delayed(const Duration(seconds: 2));

        await widgetTester.enterText(bottomTextFieldFinder, '58.2');
        await Future.delayed(const Duration(seconds: 2));

        final textResultFinder = find.text('Result: 78.2');

        await widgetTester.pump(); // Trigger a frame.

        expect(textResultFinder, findsOneWidget);

        final elevationButtonFinder =
            find.byKey(const Key('elevated_button_Addition'));

        // Tap the button.
        await widgetTester.tap(elevationButtonFinder);

        // Adding duration to avoid an error and await an answer
        // from the server...
        await widgetTester.pumpAndSettle(const Duration(seconds: 1));

        expect(find.textContaining('78 is the'), findsOneWidget);
        await Future.delayed(const Duration(seconds: 5));

        // Console command to start integration test:
        // flutter test integration_test/app_test.dart
        //
        // ... or press the Run button above.
        //
        // Must be running an emulator or a real device!
      },
    );
  });
}
