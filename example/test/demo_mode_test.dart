import 'dart:typed_data';


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:stability_sdk/stability_sdk.dart';
import 'package:stability_sdk_example/demo_client.dart';
import 'package:stability_sdk_example/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('DemoClient', () {
    test('returns a saved sample for generate requests', () async {
      final client = StabilityClient(apiKey: 'demo', httpClient: DemoClient());

      final image = await client.generate.core(prompt: 'a cat on a sofa');

      expect(image.bytes, isNotEmpty);
      expect(image.mimeType, 'image/png');
      expect(image.seed, 0);
      expect(image.isFiltered, isFalse);
    });

    test('picks the sample that matches the prompt', () async {
      final demo = DemoClient();
      Future<int> lengthFor(String prompt) async {
        final request = http.MultipartRequest(
          'POST',
          Uri.parse('https://api.stability.ai/v2beta/stable-image/generate/core'),
        )..fields['prompt'] = prompt;
        final response = await demo.send(request);
        return (await response.stream.toBytes()).length;
      }

      expect(await lengthFor('A CAT'), await lengthFor('cat again'));
      expect(await lengthFor('a cat'), isNot(await lengthFor('a dog')));
    });

    test('rejects every other request with a 401', () async {
      final client = StabilityClient(apiKey: 'demo', httpClient: DemoClient());

      await expectLater(
        client.upscale.fast(image: Uint8List.fromList([1, 2, 3])),
        throwsA(
          isA<UnauthorizedException>().having(
            (e) => e.errors,
            'errors',
            ['Demo mode has no API key.'],
          ),
        ),
      );
    });
  });

  group('ExampleApp in demo mode', () {
    late StabilityClient client;

    setUp(() {
      client = StabilityClient(apiKey: 'demo', httpClient: DemoClient());
    });

    testWidgets('shows the demo banner and the Generate tab', (tester) async {
      await tester.pumpWidget(ExampleApp(client: client));

      expect(find.textContaining('Demo mode.'), findsOneWidget);
      expect(find.text('Prompt'), findsOneWidget);
      expect(find.text('Core'), findsOneWidget);
      expect(find.text('Ultra'), findsOneWidget);
      expect(find.text('SD 3.5'), findsOneWidget);
    });

    testWidgets('generates an image and shows its details', (tester) async {
      await tester.pumpWidget(ExampleApp(client: client));

      await tester.tap(find.text('Generate').first);
      await tester.pump();
      expect(find.text('Generating...'), findsOneWidget);

      await tester.runAsync(
        () => Future<void>.delayed(const Duration(seconds: 1)),
      );
      await tester.pumpAndSettle();

      expect(find.text('Generating...'), findsNothing);
      expect(find.byType(Image), findsOneWidget);
      expect(find.text('image/png · seed 0'), findsOneWidget);
    });

    testWidgets('shows a validation error for an empty prompt', (
      tester,
    ) async {
      await tester.pumpWidget(ExampleApp(client: client));

      await tester.enterText(find.byType(TextField), '   ');
      await tester.tap(find.text('Generate').first);
      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);
    });

    testWidgets('the Edit tab asks for an API key', (tester) async {
      await tester.pumpWidget(ExampleApp(client: client));

      await tester.tap(find.text('Edit'));
      await tester.pumpAndSettle();

      final hint = find.textContaining('Editing needs an API key');
      await tester.scrollUntilVisible(
        hint,
        200,
        scrollable: find.byType(Scrollable).last,
      );
      expect(hint, findsOneWidget);
      expect(find.text('Run'), findsNothing);
      for (final action in EditAction.values) {
        expect(find.text(action.label), findsOneWidget);
      }
    });
  });
}
