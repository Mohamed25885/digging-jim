// check mouse position
boolean checkMousePosition(int x,int y1,int y2,int f){
  if((mouseX>=x && mouseX<=x+400 && mouseY>=y1 && mouseY<=y2)){
    if (mousePressed) {
     if (mouseButton == LEFT) {
       switch(f){
         case 1:pageChr='g';break;
         case 2:pageChr='h';break;
         case 3:pageChr='e';break;
         default:break;
       }
      }
    }
    return true;
  }
  return false;
}

// return to home page
void homeBtn(int x,int y){
  image(home_btn,x,y,100,100);
  if (mouseX>=x && mouseX<=x+100 && mouseY>=y && mouseY<=y+100){
    image(home_btn,x,y-10,120,120);
    if (mousePressed) {
     if (mouseButton == LEFT) {
       pageChr='s';
     }
    }
  }
}
