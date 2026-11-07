import 'package:flutter_test/flutter_test.dart';

import 'package:proyecto2_desarrollo/main.dart';

void main() {
  testWidgets('Ver más muestra y oculta la información extra', (tester) async {
    await tester.pumpWidget(const MiApp());
    expect(find.text('INTERESES'), findsNothing);

    await tester.tap(find.text('Ver más'));
    await tester.pump();
    expect(find.text('INTERESES'), findsOneWidget);
    expect(find.text('Ver menos'), findsOneWidget);

    await tester.tap(find.text('Ver menos'));
    await tester.pump();
    expect(find.text('INTERESES'), findsNothing);
  });
}
