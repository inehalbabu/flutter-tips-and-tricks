# Async/Await + Error Handling (Dart)

Most Flutter code is async. The key is to **await safely**, catch exceptions, and still run cleanup code.

## Example Code

```dart
Future<String> fetchUserName({required bool shouldFail}) async {
  await Future<void>.delayed(const Duration(milliseconds: 100));
  if (shouldFail) throw Exception('Network error');
  return 'Nehal';
}

Future<void> main() async {
  try {
    final name = await fetchUserName(shouldFail: false);
    print('Hello $name');
  } on Exception catch (e) {
    print('Expected error: $e');
  } finally {
    print('Cleanup always runs');
  }
}
```

