void initGrid(){

for(int i = 0; i < n; ++i){
   for(int j = 0; j < m; ++j){
     if(i == 0 && j == 0) grid[i][j] = 'o';
     else if(i == n - 1 && j == m - 1) grid[i][j] = 'd';
     else 
       grid[i][j] = 's';
   }
 }
}
