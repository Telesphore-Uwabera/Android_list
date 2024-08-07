import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:my_app/main.dart';
import 'package:my_app/services/api_service.dart';

// Create a mock class
class MockClient extends Mock implements http.Client {}

void main() {
  testWidgets('ListViewScreen test', (WidgetTester tester) async {
    // Create an instance of the mock client
    final client = MockClient();

    // Define the behavior of the mock client
    when(client.get(Uri.parse('https://api.restful-api.dev/objects')))
        .thenAnswer((_) async => http.Response('[{"name": "Item 1"}]', 200));

    // Replace ApiService's client with the mock client
    final apiService = ApiService(client: client);

    // Pump the widget
    await tester.pumpWidget(MyApp());

    // Verify the widget tree
    expect(find.text('List View'), findsOneWidget);
  });
}
