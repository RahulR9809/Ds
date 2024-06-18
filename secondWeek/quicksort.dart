List<int>quicksort(arr){
List<int>largest=[];
List<int>smallest=[];
List<int>equal=[];

int n=arr.length;
if(n<=1){
  return arr;
}
int middle=arr[n~/2];
int i=0;
while(i<n){
  if(arr[i]>middle){
    largest.add(arr[i]);
  }else if(arr[i]<middle){
    smallest.add(arr[i]);
  }else if(arr[i]==middle){
    equal.add(arr[i]);
  }
  i++;
}
return [...quicksort(smallest),...quicksort(equal),...quicksort(largest)];
}
void main(){
  List<int>arr=[9,7,5,3,4,1];
  List<int>fount=quicksort(arr);
  print(fount);
}