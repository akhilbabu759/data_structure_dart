void main() {
  List a =[1,26,37,33,77,3,35,0];
  
  for(int i=0;i<a.length;i++){
    for(int j=0;j<a.length-1;j++){
      if(a[j]>a[j+1]){
        int temp=a[j];
        a[j]=a[j+1];
        a[j+1]=temp;
      }
      
    }
    print(a);
  }
}