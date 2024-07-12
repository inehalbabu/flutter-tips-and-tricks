void main() {
  // Example using ?. operator
  String? str; // A nullable String variable

  // The ?. operator is used to avoid a null exception if the object is null.
  // If str is null, length will be null; otherwise, it will be str.length.
  int? length = str?.length;

  print('Length of the string: $length'); // Output: Length of the string: null

  // Now, let's assign a value to str and see the difference.
  str = "Hello, Dart!";
  length = str?.length;

  print('Length of the string: $length'); // Output: Length of the string: 11

  // Example using ?? operator
  String? someNullableValue; // A nullable String variable
  String defaultValue = 'Default Value';

  // The ?? operator is used to provide a default value if the expression is null.
  // If someNullableValue is null, value will be defaultValue.
  var value = someNullableValue ?? defaultValue;

  print('Value: $value'); // Output: Value: Default Value

  // Now, let's assign a value to someNullableValue and see the difference.
  someNullableValue = "Actual Value";
  value = someNullableValue ?? defaultValue;

  print('Value: $value'); // Output: Value: Actual Value
}
