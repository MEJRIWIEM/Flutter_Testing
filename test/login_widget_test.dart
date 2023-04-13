// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_app/UI/pages/login.page.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void main() {
  //Permet de créer la page
  final baseApp = MediaQuery(
    data: const MediaQueryData(),
    child: MaterialApp(
      home: loginPage(),
    ),
  );
  // on doit toujours récupérer le materialApp

  testWidgets(
    'Login Page Test Set',
    (WidgetTester tester) async {
      await tester.pumpWidget(baseApp);

      final withTextName = find.text('Nom');
      expect(withTextName, findsOneWidget);

      final withTextPassword = find.text('Mot de passe');
      expect(withTextPassword, findsOneWidget);

      //On peut chercher avec Icon

      //on peut chercher avec un type par exemple le customappbar
      final type = find.byType(AppBar);
      expect(type, findsOneWidget);


      //on peut chercher par rapport une key
      final byKey = find.byKey(Key('_formKey'));
      expect (byKey, findsNothing);

    },
  );
}
