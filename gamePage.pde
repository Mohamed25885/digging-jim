// Show the Game page 
void gamePage(){
  background(155);
  
  
  
   int currentTime = millis();
  background(0);
  for(int i = 0; i < n; ++i){
    for(int j = 0; j < m; ++j){
      if(grid[i][j] == 'o') image(oDoor, i * w, j * h, w, h);
      else if(grid[i][j] == 'd') image(door, i * w, j * h, w, h);
      if(grid[i][j] == 's') {
        image(sand, i * w, j * h, w, h);
      }
    }
  }
  image(front, gridX * w, gridY * h, w, h);

   
    if(currentTime - lastExecutionTime >= interval){
      if(keyPressed && key == CODED){
      if(keyCode == LEFT &&gridX > 0)gridX--;
      else if(keyCode == RIGHT && gridX < n - 1) gridX++;
      else if(keyCode == UP && gridY > 0) gridY--;
      else if(keyCode == DOWN && gridY < m - 1)gridY++;
      if(!((gridX == 0 && gridY == 0) || (gridX == n - 1 && gridY == m - 1)))  grid[gridX][gridY] = 'e';
        lastExecutionTime = currentTime; 
    }
    
  }
  
  homeBtn(1100,20);
}
