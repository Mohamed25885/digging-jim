
// Show the start-Menu page
void startMenuPage(){
  // draw Images
  image(img,0,0,1200,1000); // background
  image(playImg,x,y,400,100); // play button
  image(helpImg,x,y+200,400,100); // help button
  image(exitImg,x,y+400,400,100); // exit button
 
   // check if mouse intersects with the buttons
  if (checkMousePosition(x,y,y+100,1)) playImg = playArrow;
  else playImg = play;
  if (checkMousePosition(x,y+200,y+300,2)) helpImg = helpArrow;
  else helpImg = help;  
  if (checkMousePosition(x,y+400,y+500,3)) exitImg = exitArrow;
  else exitImg = exit;  
}
