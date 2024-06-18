
// Write a Dart program to check if a given string is a palindrome or not.
void main() {
  String testString1 = 'radar';
  String reversed = '';
  
  for (int i = testString1.length - 1; i >= 0; i--) {
    reversed += testString1[i];
  }

  bool isPalindrome = testString1 == reversed;

  if (isPalindrome) {
    print('$testString1 is a palindrome');
  } else {
    print('$testString1 is not a palindrome');
  }
}



