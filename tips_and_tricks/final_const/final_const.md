# Dart Final and Const Example

This project demonstrates the use of the `final` and `const` keywords in Dart. These keywords are essential for defining variables that either won't change after initialization or are compile-time constants.

## Overview

- `final`: Used for variables that are initialized once and won't change afterwards.
- `const`: Used for compile-time constant values that are immutable and known at compile time.

## Example Code

The following example showcases how to use `final` and `const` in a Dart application:

```dart
void main() {
  // Using final for variables that are initialized once and won't change
  final int age = 25;
  final String name = 'John Doe';

  // Using const for compile-time constants
  const double pi = 3.14159;
  const int maxScore = 100;

  // Demonstrating usage in a class
  class Circle {
    // The radius can be initialized at runtime and won't change afterwards
    final double radius;

    // The value of pi is a compile-time constant
    static const double pi = 3.14159;

    Circle(this.radius);

    double getArea() {
      return pi * radius * radius;
    }
  }

  // Creating an instance of Circle with a radius
  final circle = Circle(5.0);

  // Printing the details
  print('Name: $name');
  print('Age: $age');
  print('Pi: $pi');
  print('Max Score: $maxScore');
  print('Circle Radius: ${circle.radius}');
  print('Circle Area: ${circle.getArea()}');
}
```
