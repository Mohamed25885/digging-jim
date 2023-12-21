// Show the Game page 
void gamePage(){
  background(155);
  
  
  
   int currentTime = millis();
  background(0);
  for(int j = 0; j < n; ++j){
    for(int i = 0; i < m; ++i){
      
    
      if(GAME_SETTINGS.gridHolder[0][j][i] == 'o') image(oDoor, i * w, j * h, w, h);
      else if(GAME_SETTINGS.gridHolder[0][j][i] == 'd') image(door, i * w, j * h, w, h);
      else if(GAME_SETTINGS.gridHolder[0][j][i] == 'r') image(rock, i * w, j * h, w, h);
      if(GAME_SETTINGS.gridHolder[0][j][i] == 's') {
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
