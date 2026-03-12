# Collection `if` and `for` in Dart

Collection `if` and collection `for` let you build lists/maps/sets *declaratively* (great for Flutter widget trees).

## Example Code

```dart
void main() {
  final isLoggedIn = true;
  final items = ['Home', 'Explore', 'Profile'];

  final menu = <String>[
    'App',
    if (isLoggedIn) 'Logout' else 'Login',
    for (final item in items) 'Go to $item',
  ];

  print(menu);
}
```

## Result

```dart
[App, Logout, Go to Home, Go to Explore, Go to Profile]
```

