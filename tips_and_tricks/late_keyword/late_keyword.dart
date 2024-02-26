/// Declaring a non-nullable variable that’s initialized after its declaration.
///

// In Dart, the late keyword is used to indicate that a variable will be
// initialized at a later point in the program, but before it is accessed.
// This can be useful in situations where you need to declare a variable before
// its value is known, but you want to ensure that the variable is not accessed
// until it has been assigned a value.

late String description;

void main() {
  // Initializing the 'description' variable later in the program
  description = 'Feijoada!';
  print(description); // print the description
}

/// Lazily initializing a variable.

// if you want to to test this then you can simply modify of remove the code

void main() {
  Sample obj = Sample();
  obj.num;
}

class Sample {
  late int num = digit();
}

int digit() {
  print('Hello');
  return 89;
}