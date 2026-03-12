# Sealed classes + Pattern matching (Dart 3)

This is a powerful **advanced** technique for modeling state (great for Flutter UI states: loading/success/error).

## Example Code

```dart
sealed class UiState {
  const UiState();
}

final class Loading extends UiState {
  const Loading();
}

final class Success extends UiState {
  const Success(this.data);
  final String data;
}

final class Failure extends UiState {
  const Failure(this.message);
  final String message;
}

String render(UiState state) => switch (state) {
      Loading() => 'Loading…',
      Success(data: final d) => 'Data: $d',
      Failure(message: final m) => 'Error: $m',
    };

void main() {
  print(render(const Loading()));
  print(render(const Success('Hello')));
  print(render(const Failure('No internet')));
}
```

