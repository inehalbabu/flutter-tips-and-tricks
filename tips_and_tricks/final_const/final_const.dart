void main() {
  final int x = 10; // Declaring 'x' as final means its value can't change after initialization.
  const double pi = 3.14; // Declaring 'pi' as const ensures it's a compile-time constant.

  // Trying to reassign final variables will result in a compile-time error.
  // x = 20; // Error: The final variable 'x' can only be set once.

  print('x: $x');
  print('pi: $pi');
}
