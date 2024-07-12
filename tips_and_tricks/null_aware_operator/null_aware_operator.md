# Dart Null-Aware Operators

This repository demonstrates the use of null-aware operators (`?.` and `??`) in Dart. Null-aware operators are used to handle `null` values gracefully, avoiding null exceptions and providing default values when necessary.

## Null-Aware Operators

### `?.` Operator
The `?.` operator is used to avoid a null exception if the object is null. If the object is null, the expression evaluates to null; otherwise, it evaluates to the value of the object's property or method.

### `??` Operator
The `??` operator is used to provide a default value if the expression is null. If the expression is null, it evaluates to the default value; otherwise, it evaluates to the value of the expression.

## Example Usage

### `?.` Operator Example
```dart
void main() {
  // Example using ?. operator
  String? str; // A nullable String variable

  // The ?. operator is used to avoid a null exception if the object is null.
  // If str is null, length will be null; otherwise, it will be str.length.
  var length = str?.length;

  print('Length of the string: $length'); // Output: Length of the string: null

  // Now, let's assign a value to str and see the difference.
  str = "Hello, Dart!";
  length = str?.length;

  print('Length of the string: $length'); // Output: Length of the string: 11
}
