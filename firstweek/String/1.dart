// Question: Write a Dart program to reverse a given string.

void main() {
  String original = 'Hello World';
  String reversed = '';

  for (int i = original.length - 1; i >= 0; i--) {
    reversed += original[i];
  }

 
  print('Reversed String: $reversed');
}
