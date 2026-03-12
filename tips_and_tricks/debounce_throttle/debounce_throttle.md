# Debounce vs Throttle (Dart)

When reacting to user input (search, sliders, scroll), **debounce** waits until the user stops, while **throttle** limits how often you react.

## Example Code

```dart
import 'dart:async';

class Debouncer {
  Debouncer(this.delay);
  final Duration delay;
  Timer? _timer;

  void run(void Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  void dispose() => _timer?.cancel();
}

class Throttler {
  Throttler(this.interval);
  final Duration interval;
  DateTime? _lastRun;

  void run(void Function() action) {
    final now = DateTime.now();
    if (_lastRun == null || now.difference(_lastRun!) >= interval) {
      _lastRun = now;
      action();
    }
  }
}

Future<void> main() async {
  final debouncer = Debouncer(const Duration(milliseconds: 200));
  final throttler = Throttler(const Duration(milliseconds: 200));

  for (var i = 1; i <= 5; i++) {
    debouncer.run(() => print('debounced: $i'));
    throttler.run(() => print('throttled: $i'));
    await Future<void>.delayed(const Duration(milliseconds: 80));
  }

  await Future<void>.delayed(const Duration(milliseconds: 250));
  debouncer.dispose();
}
```

