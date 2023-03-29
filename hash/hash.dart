void main() {
  Map<String, int> myMap = {};

  
  myMap['apple'] = 1;
  myMap['banana'] = 2;
  myMap['cherry'] = 3;


  print(myMap['apple']); 

 
  if (myMap.containsKey('banana')) {
    print('Found banana!');
  }

  
  myMap.remove('cherry');

  
  myMap.forEach((key, value) {
    print('$key: $value');
  });
}
