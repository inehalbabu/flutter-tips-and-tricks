# Flutter Tips and Tricks

<p align="center">
  <strong>Learn Flutter faster with bite-sized, practical tips.</strong><br/>
  Dart patterns + Flutter best practices + common pitfalls (with runnable examples).
</p>

<p align="center">
  <a href="LICENCE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License"></a>
  <a href="CONTRIBUTING.md"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs welcome"></a>
  <a href="roadmap/flutter_roadmap.md"><img src="https://img.shields.io/badge/Learning%20path-Roadmap-8A2BE2" alt="Roadmap"></a>
</p>

Welcome to **Flutter Tips and Tricks** — a beginner-friendly collection of **Dart + Flutter** tips that help you write cleaner code, build better UI, and avoid common mistakes.

## Table of contents

- [Start here](#start-here)
- [What you’ll learn](#what-youll-learn)
- [Dart tips (runnable)](#dart-tips-runnable)
- [Flutter tips (guides)](#flutter-tips-guides)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Start here

- **New to Flutter?** Follow the curated learning path in [`roadmap/flutter_roadmap.md`](roadmap/flutter_roadmap.md).
- **Want quick wins?** Pick any tip below and read the guide in 2–5 minutes.
- **Want to practice?** Run the Dart examples locally.

```bash
dart path/to/example.dart
```

## What you’ll learn

- **Dart language patterns** you’ll use daily in Flutter code
- **Widget + layout fundamentals** (constraints, lists, keys)
- **Performance habits** that prevent jank early
- **Safe async UI** (avoiding “setState called after dispose” style bugs)

## Dart tips (runnable)

| Topic | Guide | Code | Run |
| --- | --- | --- | --- |
| Anonymous functions | [Guide](tips_and_tricks/anonymous_function/anonymous_function.md) | [Code](tips_and_tricks/anonymous_function/anonymous_function.dart) | `dart tips_and_tricks/anonymous_function/anonymous_function.dart` |
| Cascade notation (`..`) | [Guide](tips_and_tricks/cascade_notation/cascade_notation.md) | [Code](tips_and_tricks/cascade_notation/cascade_notation.dart) | `dart tips_and_tricks/cascade_notation/cascade_notation.dart` |
| Collection `if` / `for` | [Guide](tips_and_tricks/collection_if_for/collection_if_for.md) | [Code](tips_and_tricks/collection_if_for/collection_if_for.dart) | `dart tips_and_tricks/collection_if_for/collection_if_for.dart` |
| Debounce vs throttle | [Guide](tips_and_tricks/debounce_throttle/debounce_throttle.md) | [Code](tips_and_tricks/debounce_throttle/debounce_throttle.dart) | `dart tips_and_tricks/debounce_throttle/debounce_throttle.dart` |
| Extension methods | [Guide](tips_and_tricks/extension_methods/extension_methods.md) | [Code](tips_and_tricks/extension_methods/extension_methods.dart) | `dart tips_and_tricks/extension_methods/extension_methods.dart` |
| `final` vs `const` | [Guide](tips_and_tricks/final_const/final_const.md) | [Code](tips_and_tricks/final_const/final_const.dart) | `dart tips_and_tricks/final_const/final_const.dart` |
| `late` keyword | [Guide](tips_and_tricks/late_keyword/late_keyword.md) | [Code](tips_and_tricks/late_keyword/late_keyword.dart) | `dart tips_and_tricks/late_keyword/late_keyword.dart` |
| Null-aware operators (`?.`, `??`) | [Guide](tips_and_tricks/null_aware_operator/null_aware_operator.md) | [Code](tips_and_tricks/null_aware_operator/null_aware_operator.dart) | `dart tips_and_tricks/null_aware_operator/null_aware_operator.dart` |
| Spread operator (`...`, `...?`) | [Guide](tips_and_tricks/spread_operator/spread_operator.md) | [Code](tips_and_tricks/spread_operator/spread_operator.dart) | `dart tips_and_tricks/spread_operator/spread_operator.dart` |
| String manipulation | [Guide](tips_and_tricks/string_manipulation/string_manupulation.md) | [Code](tips_and_tricks/string_manipulation/string_manupulation.dart) | `dart tips_and_tricks/string_manipulation/string_manupulation.dart` |

## Flutter tips (guides)

| Topic | Guide |
| --- | --- |
| Prefer `const` widgets | [Guide](flutter_tips/const_everywhere.md) |
| Use `context.mounted` after `await` | [Guide](flutter_tips/context_mounted.md) |
| List performance essentials | [Guide](flutter_tips/listview_performance.md) |
| Layout constraints (common errors) | [Guide](flutter_tips/layout_constraints.md) |
| Keys in dynamic lists | [Guide](flutter_tips/keys_in_lists.md) |

## Roadmap

See the curated learning path in [`roadmap/flutter_roadmap.md`](roadmap/flutter_roadmap.md).

## Contributing

Contributions are welcome.

- Add a new tip (guide + optional runnable example)
- Improve an existing tip (clarity, correctness, formatting)
- Fix typos / broken links

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
