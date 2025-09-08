# Flutter Tips and Tricks

Welcome to the **Flutter Tips and Tricks** repository! This collection focuses on practical Dart language tips and patterns that are especially useful when building Flutter apps. Each tip includes a short guide and a runnable Dart example.

## Table of Contents

1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Quick Start](#quick-start)
4. [Repository Structure](#repository-structure)
5. [Tips Index](#tips-index)
6. [How to Run the Examples](#how-to-run-the-examples)
7. [Add a New Tip](#add-a-new-tip)
8. [Roadmap](#roadmap)
9. [Contributing](#contributing)
10. [License](#license)
11. [Contact](#contact)

## Overview

This repository compiles concise, copy-paste friendly examples that teach core Dart concepts and language features commonly used in Flutter development. It is great for quick learning, onboarding, or refreshing fundamentals.

## Prerequisites

- Dart SDK installed: see the [official install guide](https://dart.dev/get-dart)
- Optional (for Flutter projects): [Install Flutter](https://flutter.dev/docs/get-started/install)

Verify your setup:

```powershell
dart --version
```

## Quick Start

Clone and explore the examples locally:

```powershell
git clone https://github.com/inehalbabu/flutter-tips-and-tricks.git
cd flutter-tips-and-tricks
```

## Repository Structure

```text
flutter-tips-and-tricks/
  CONTRIBUTING.md
  LICENCE
  README.md
  roadmap/
    flutter_roadmap.md
  tips_and_tricks/
    anonymous_function/
      anonymous_function.md
      anonymous_function.dart
    cascade_notation/
      cascade_notation.md
      cascade_notation.dart
    final_const/
      final_const.md
      final_const.dart
    late_keyword/
      late_keyword.md
      late_keyword.dart
    null_aware_operator/
      null_aware_operator.md
      null_aware_operator.dart
    spread_operator/
      spread_operator.md
      spread_operator.dart
    string_manipulation/
      string_manupulation.md
      string_manupulation.dart
```

## Tips Index

| Topic | Guide | Code | Run |
| --- | --- | --- | --- |
| Anonymous functions | [Guide](tips_and_tricks/anonymous_function/anonymous_function.md) | [Code](tips_and_tricks/anonymous_function/anonymous_function.dart) | `dart tips_and_tricks/anonymous_function/anonymous_function.dart` |
| Cascade notation (`..`) | [Guide](tips_and_tricks/cascade_notation/cascade_notation.md) | [Code](tips_and_tricks/cascade_notation/cascade_notation.dart) | `dart tips_and_tricks/cascade_notation/cascade_notation.dart` |
| `final` vs `const` | [Guide](tips_and_tricks/final_const/final_const.md) | [Code](tips_and_tricks/final_const/final_const.dart) | `dart tips_and_tricks/final_const/final_const.dart` |
| `late` keyword | [Guide](tips_and_tricks/late_keyword/late_keyword.md) | [Code](tips_and_tricks/late_keyword/late_keyword.dart) | `dart tips_and_tricks/late_keyword/late_keyword.dart` |
| Null-aware operators (`?.`, `??`) | [Guide](tips_and_tricks/null_aware_operator/null_aware_operator.md) | [Code](tips_and_tricks/null_aware_operator/null_aware_operator.dart) | `dart tips_and_tricks/null_aware_operator/null_aware_operator.dart` |
| Spread operator (`...`, `...?`) | [Guide](tips_and_tricks/spread_operator/spread_operator.md) | [Code](tips_and_tricks/spread_operator/spread_operator.dart) | `dart tips_and_tricks/spread_operator/spread_operator.dart` |
| String manipulation | [Guide](tips_and_tricks/string_manipulation/string_manupulation.md) | [Code](tips_and_tricks/string_manipulation/string_manupulation.dart) | `dart tips_and_tricks/string_manipulation/string_manupulation.dart` |

## How to Run the Examples

Each tip includes a `.dart` file that you can run directly with the Dart CLI:

```powershell
dart tips_and_tricks/anonymous_function/anonymous_function.dart
dart tips_and_tricks/cascade_notation/cascade_notation.dart
dart tips_and_tricks/final_const/final_const.dart
dart tips_and_tricks/late_keyword/late_keyword.dart
dart tips_and_tricks/null_aware_operator/null_aware_operator.dart
dart tips_and_tricks/spread_operator/spread_operator.dart
dart tips_and_tricks/string_manipulation/string_manupulation.dart
```

## More Tips & Snippets

- Assertions in development:

  ```dart
  void main() {
    assert(1 + 1 == 2); // Removed in release builds
  }
  ```

- String interpolation and raw strings:

  ```dart
  void main() {
    final name = 'Dart';
    print('Hello, $name!');
    print(r'C:\path\to\file'); // raw string, backslashes not escaped
  }
  ```

- Collection-if and collection-for:

  ```dart
  void main() {
    final includeExtra = true;
    final base = [1, 2, 3];
    final list = [
      for (final n in base) n * 2,
      if (includeExtra) 99,
    ];
    print(list); // [2, 4, 6, 99]
  }
  ```

- Using `map`, `where`, `reduce` on collections:

  ```dart
  void main() {
    final nums = [1, 2, 3, 4];
    final evensSquared = nums.where((n) => n.isEven).map((n) => n * n).toList();
    final sum = nums.reduce((a, b) => a + b);
    print(evensSquared); // [4, 16]
    print(sum); // 10
  }
  ```

- Ternary operator and null-coalescing together:

  ```dart
  void main() {
    String? nick;
    final display = (nick != null && nick!.isNotEmpty) ? nick : 'Guest';
    final safe = nick ?? 'Guest';
    print(display);
    print(safe);
  }
  ```

- `DateTime` and formatting basics:

  ```dart
  void main() {
    final now = DateTime.now();
    print(now.toIso8601String());
  }
  ```

 - Extension methods:

  ```dart
  extension StringCasing on String {
    String get capitalized => isEmpty ? this : this[0].toUpperCase() + substring(1);
  }

  void main() {
    print('dart'.capitalized); // Dart
  }
  ```

- Enums with members and methods:

  ```dart
  enum Status {
    pending(0), inProgress(1), done(2);
    const Status(this.code);
    final int code;
    bool get isTerminal => this == Status.done;
  }

  void main() {
    final s = Status.inProgress;
    print(s.code); // 1
    print(Status.done.isTerminal); // true
  }
  ```

- Records and pattern matching (Dart 3):

  ```dart
  (int, String) pair() => (1, 'one');

  void main() {
    final (n, text) = pair();
    switch ((n, text)) {
      case (>= 1, 'one'):
        print('Matched');
      default:
        print('Other');
    }
  }
  ```

- Switch expressions (Dart 3):

  ```dart
  String levelLabel(int score) => switch (score) {
        < 50 => 'Beginner',
        >= 50 && < 80 => 'Intermediate',
        _ => 'Advanced',
      };

  void main() {
    print(levelLabel(72)); // Intermediate
  }
  ```

- Async/await basics:

  ```dart
  Future<String> fetch() async {
    await Future.delayed(Duration(milliseconds: 100));
    return 'done';
  }

  void main() async {
    final v = await fetch();
    print(v);
  }
  ```

- Streams: map, where, listen:

  ```dart
  Stream<int> counter(int n) async* {
    for (var i = 1; i <= n; i++) {
      await Future.delayed(Duration(milliseconds: 50));
      yield i;
    }
  }

  void main() async {
    await for (final v in counter(5).where((e) => e.isOdd).map((e) => e * 10)) {
      print(v); // 10, 30, 50
    }
  }
  ```

## Add a New Tip

Contributions are welcome! To add a new tip:

1. Create a new folder under `tips_and_tricks/` using `snake_case` (for example, `my_new_tip/`).
2. Add two files inside that folder:
   - A guide: `my_new_tip.md` explaining the concept, with code snippets and output.
   - A runnable example: `my_new_tip.dart` that demonstrates the concept.
3. Update the [Tips Index](#tips-index) above with links to your files.
4. Submit a pull request following the steps in [CONTRIBUTING.md](CONTRIBUTING.md).

Suggested folder template:

```text
tips_and_tricks/
  my_new_tip/
    my_new_tip.md
    my_new_tip.dart
```

## Roadmap

See the curated learning path in [`roadmap/flutter_roadmap.md`](roadmap/flutter_roadmap.md).

## Contributing

Please read the guidelines in [CONTRIBUTING.md](CONTRIBUTING.md) before submitting changes.

## License

This project is licensed under the MIT License. See [`LICENCE`](LICENCE) for details.

## Contact

For any questions or feedback, you can reach out to the project maintainer:

<p>
  <a href="mailto:inehalbabu@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=flat&logo=gmail&logoColor=white" alt="Email" width="100" height="35"></a>
  <a href="https://github.com/inehalbabu"><img src="https://img.shields.io/badge/GitHub-100000?style=flat&logo=github&logoColor=white" alt="GitHub" width="100" height="35"></a>
  <a href="https://www.linkedin.com/in/inehalbabu"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white" alt="LinkedIn" width="100" height="35"></a>
</p>

Happy coding!
