# Extension Methods in Dart

Extensions help you add small, reusable utilities without subclassing. In Flutter, they’re commonly used for `BuildContext` helpers, formatting, and UI spacing.

## Example Code

```dart
extension StringX on String {
  bool get isBlank => trim().isEmpty;

  String trunc(int max) =>
      length <= max ? this : '${substring(0, max).trimRight()}…';
}

void main() {
  print('   '.isBlank); // true
  print('Flutter is awesome'.trunc(10)); // Flutter is…
}
```

