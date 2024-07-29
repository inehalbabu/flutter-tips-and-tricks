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
