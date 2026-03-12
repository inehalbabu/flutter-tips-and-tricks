# Use `context.mounted` after `await`

After an `await`, the widget might have been disposed. In Flutter 3.7+, use `context.mounted` before calling `Navigator`, `showDialog`, `ScaffoldMessenger`, etc.

## Example

```dart
Future<void> onSavePressed(BuildContext context) async {
  await Future<void>.delayed(const Duration(seconds: 1));

  if (!context.mounted) return;
  Navigator.of(context).pop();
}
```

## Why it matters

This avoids exceptions like “Looking up a deactivated widget’s ancestor is unsafe.”

