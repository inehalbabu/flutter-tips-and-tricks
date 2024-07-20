# Dart Spread Operator Examples

This repository contains examples demonstrating the use of the spread operator (`...`) and the null-aware spread operator (`...?`) in Dart. These operators allow you to insert the contents of one collection into another.

## Example with Lists

```dart
void main() {
  var list1 = [1, 2, 3];
  var list2 = [4, 5, 6];
  var combinedList = [...list1, ...list2];

  print(combinedList); // Output: [1, 2, 3, 4, 5, 6]
}
```

## Example with Sets

```dart
void main() {
  var set1 = {1, 2, 3};
  var set2 = {3, 4, 5};
  var combinedSet = {...set1, ...set2};

  print(combinedSet); // Output: {1, 2, 3, 4, 5}
}
```

## Example with Maps

```dart
void main() {
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'b': 3, 'c': 4};
  var combinedMap = {...map1, ...map2};

  print(combinedMap); // Output: {a: 1, b: 3, c: 4}
}
```

## Example with Null-aware Spread Operator

```dart
void main() {
  var list1 = [1, 2, 3];
  List<int>? list2;
  var combinedList = [...list1, ...?list2];

  print(combinedList); // Output: [1, 2, 3]
}
```

## Example with Combining Lists with Conditions
```dart
void main() {
  var list1 = [1, 2, 3];
  var condition = true;
  var list2 = [4, 5, 6];

  var combinedList = [
    ...list1,
    if (condition) ...list2,
  ];

  print(combinedList); // Output: [1, 2, 3, 4, 5, 6]
}
```