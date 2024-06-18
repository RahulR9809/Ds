


 pal(String str) {
    if (str.length <= 1) {
      return true; 
    } else {
      if (str[0] == str[str.length - 1]) {
  
        return pal(str.substring(1, str.length - 1));
      } else {
        return false;
      }
    }
  }
void main() {
  String str = 'radar';
  bool result = pal(str);
  if (result) {
    print('$str is a palindrome');
  } else {
    print('$str is not a palindrome');
  }
}
