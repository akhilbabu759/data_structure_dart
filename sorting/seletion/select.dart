import 'dart:developer';

void main(List<String> args) {
  List<int> a=[10,1,40,39,29,48];
  print(a.length);
  for(int i=0;i<a.length-1;i++){
    int min_index=i;
    log(i.toString(),name: 'i');
    for(int j=i+1;j<a.length;j++){
      log(j.toString(),name: 'j');
      if(a[j]<a[min_index]){
         print(j);
         min_index=j;
        int t=a[min_index];
        a[min_index]=a[i];
        a[i]=t;
      }
    }
  }
   print(a);
  
  
}