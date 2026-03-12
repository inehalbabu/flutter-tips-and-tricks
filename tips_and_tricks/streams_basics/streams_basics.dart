Stream<int> countDown(int from) async* {
  for (var i = from; i >= 0; i--) {
    yield i;
    await Future<void>.delayed(const Duration(milliseconds: 80));
  }
}

Future<void> main() async {
  await for (final value in countDown(3)) {
    print(value);
  }
}

