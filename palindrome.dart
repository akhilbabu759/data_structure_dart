void main(List<String> args) {
  String str = 'malayalam';
 List< String> reverse=[];
  for (int j =str.length-1 ;j>=0 ; j--) {
    // print('${i}::${j}');
    
   int a= (str[j].codeUnitAt(0)-97)%26;
   print(a);
   String b=String.fromCharCode(a+65);
   
      reverse.add(b);
    
      // reverse.add(str[j]);

    
     
  }
  print(reverse);
  int o=0;
  for (var i in reverse) {

   if( i==str[o]){
    print(true);
   }else{
    print(false);
   }
    o++;
  }
//  if( reverse==str){
//   print(true);
//  }else{
//   print(false);
//  }
}
