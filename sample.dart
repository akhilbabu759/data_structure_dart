class Graph{
  late int numvertics;
  late List<List<int>> adject;
  Graph(int numvertc){
    numvertics=numvertc;
    adject=List<List<int>>.generate(numvertics, (index) => List<int>.empty(growable: true));
  }
  void addEdge(int src,int dest){
    adject[src].add(dest);
    adject[dest].add(src);

  }
  void bfs(){
   
      for(int i=0;i<numvertics;i++){
        int temp=adject[i][0];
        if(adject[i][0]==adject[i][adject[i].length-1]){
          print('it have a cycle');
        }
        // for(int j=0;j<adject[i].length-1;j++){
          
        // }

      
    }
  }
}
void main(List<String> args) {
  Graph nod=Graph(4);
  nod.addEdge(0, 1);
  nod.addEdge(0, 2);
  nod.addEdge(0, 3);
  nod.addEdge(0, 1);
  nod.bfs();
  
}