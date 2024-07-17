# Dart `late` Keyword Examples

This repository contains examples demonstrating the use of the `late` keyword in Dart. The `late` keyword is useful for declaring non-nullable variables that are initialized after their declaration or for lazy initialization, which means the variable is initialized when it is accessed for the first time.

## Example 1: Non-nullable Variable Initialized After Declaration

In Dart, you may need to declare a variable before its value is known or available, but you want to ensure that the variable is not accessed until it has been assigned a value. This is where the `late` keyword comes into play.

### Code

```dart
void main() {
  // Declare the variable 'description' as late
  late String description;

  // Some other logic here
  print('Performing some initial operations...');

  // Initialize the 'description' variable later in the program
  description = 'Feijoada is a traditional Brazilian dish.';

  // Now it's safe to access 'description'
  print(description); // Output: Feijoada is a traditional Brazilian dish.
}
```