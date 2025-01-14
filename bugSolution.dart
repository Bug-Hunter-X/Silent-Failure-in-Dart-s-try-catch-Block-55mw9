```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
    } else {
      // Handle error by rethrowing the exception
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception. Re-throw the exception to propagate the error
    print('Error: $e');
    rethrow; // Rethrow the exception
  }
}
```