// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1234/movie_module/apps/movie_app.dart';
import 'package:flutter_application_1234/movie_module/logics/movie_theme_logic.dart';

void main() {
  testWidgets('MovieApp builds and shows home tab', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider<MovieThemeLogic>(
        create: (_) => MovieThemeLogic(),
        child: const MovieApp(),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(MovieApp), findsOneWidget);
    expect(find.byIcon(Icons.home), findsOneWidget);
  });
}
