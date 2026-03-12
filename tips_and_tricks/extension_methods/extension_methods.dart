extension StringX on String {
  bool get isBlank => trim().isEmpty;

  String trunc(int max) =>
      length <= max ? this : '${substring(0, max).trimRight()}…';
}

void main() {
  print('   '.isBlank);
  print('Flutter is awesome'.trunc(10));
}

