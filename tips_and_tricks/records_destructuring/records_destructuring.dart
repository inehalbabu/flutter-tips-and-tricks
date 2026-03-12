(int min, int max) minMax(List<int> values) {
  var min = values.first;
  var max = values.first;
  for (final v in values.skip(1)) {
    if (v < min) min = v;
    if (v > max) max = v;
  }
  return (min, max);
}

void main() {
  final (min, max) = minMax([7, 2, 9, 4]);
  print('min=$min max=$max');
}

