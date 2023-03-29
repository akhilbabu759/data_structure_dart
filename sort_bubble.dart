import 'dart:developer';

void main(List<String> args) {
  List<int> a=[10,1,40,39,29,48];
  print(a.length);
  for(int i=0;i<a.length;i++){
    log(i.toString(),name: 'i');
    for(int j=i;j>0;j--){
      log(j.toString(),name: 'j');
      if(a[j]<a[j-1]){
         print(j);
        int t=a[j];
        a[j]=a[j-1];
        a[j-1]=t;
      }
    }
  }
   print(a);
  
  
}