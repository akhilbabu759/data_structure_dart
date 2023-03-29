void main(List<String> args) {
  List<int> a=[10,1,40,39,29,48];
  for(int i=0;i<=a.length;i++){
    for(int j=0;j<a.length-1;j++){
      if(a[j]>a[j+1]){
        int t=a[j];
        a[j]=a[j+1];
        a[j+1]=t;
      }
    }
  }
  print(a);
  
  
}