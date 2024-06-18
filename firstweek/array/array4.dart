// duplicate number


void main (){
  List<int> arr=[1,2,3,4,5,6,6];
  int duplicates=0;
  for(int i=0;i<arr.length;i++){
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        duplicates = arr[i];
        break;
      }
  }
  print(duplicates);
}
}