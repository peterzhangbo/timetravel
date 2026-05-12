import 'package:flutter_test/flutter_test.dart';
import 'package:timetravel/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('App launches', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: TimeTravelApp()));
    expect(find.text('TimeTravel'), findsOneWidget);
  });
}
