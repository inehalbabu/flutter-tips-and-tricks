# Anonymous Functions in Dart

Anonymous functions (also known as lambdas or closures) in Dart are functions without a name. They
are commonly used for short-lived operations such as callbacks, event handlers, and within
higher-order functions. This document explains the concept and provides examples.

**Syntax**:

   ```dart
   (
parameters) {
// Function body
}
   ```

# Examples

## Example 1: Basic Anonymous Function

A simple example of an anonymous function being passed to the 'forEach' method of a list:

```dart
void main() {
  var numbers = [1, 2, 3, 4, 5];

  numbers.forEach((number) {
    print(number * 2);
  });
}
```

## Example 2: Anonymous Function as a Callback

Anonymous functions are often used as callbacks, for instance, in event handling or asynchronous operations.

```dart
void main() {
  Future.delayed(Duration(seconds: 2), () {
    print('This message is printed after a 2-second delay');
  });
}
```

## Example 3: Capturing Variables (Closures)

Anonymous functions can capture and use variables from their enclosing scope.

```dart
void main() {
  var multiplier = 3;
  var numbers = [1, 2, 3, 4, 5];
  
  var multiply = (number) {
    return number * multiplier;
  };
  
  numbers.forEach((number) {
    print(multiply(number));
  });
}
```




