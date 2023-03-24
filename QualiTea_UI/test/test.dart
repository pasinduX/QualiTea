import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/main.dart';

void main() {
  testWidgets('MyApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    // Add tests here!
  });
}
