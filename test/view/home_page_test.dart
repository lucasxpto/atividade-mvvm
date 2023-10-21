import 'package:biblioteca/view/home_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('HomePage displays list after loading', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Verifique se o widget CircularProgressIndicator está na tela.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Aguarde a animação
    await tester.pumpAndSettle();

    // Verifique se os itens da lista estão sendo exibidos
    expect(find.byType(ListTile), findsWidgets);
  });
}
