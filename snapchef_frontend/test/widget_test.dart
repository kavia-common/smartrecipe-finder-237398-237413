import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:snapchef_frontend/app/snapchef_app.dart';
import 'package:snapchef_frontend/state/app_state.dart';

void main() {
  testWidgets('App boots to splash first', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppState(),
        child: const SnapChefApp(),
      ),
    );

    expect(find.text('SnapChef'), findsOneWidget);
  });
}
