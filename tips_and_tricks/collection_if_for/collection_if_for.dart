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

