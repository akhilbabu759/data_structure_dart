void main(List<String> args) {
  String a='abc';
  String b='bac';
  Map<String,int> ma={};
  for(int i=0;i<a.length-1;i++){
    ma[a[i]]=1;
  }
  for(int i=0;i<b.length-1;i++){
    if(ma.containsKey(b[i])){
      ma[b[i]]=2;
    }

  }
  
  if(ma.)
}