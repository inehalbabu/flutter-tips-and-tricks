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
