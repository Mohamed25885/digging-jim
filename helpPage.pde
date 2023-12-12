// Show the Guidelines page 
void helpPage(){
  image(background,0,0);
  image(board, 100, 50, width - 200, height - 200);
  image(help_tag,  width / 2 - 275 / 2, 50, 275, 97);
  image(right_arrow,  170, 200 - 98 / 2, 86, 98);
  textSize(36);
  text("Your goal is to continue digging until you reach",260, 210);
  text("the exit door and collecet as many diamonds",260, 260);
  text("as possible. While digging, you must avoid",260, 310);
  text("rocks and diamonds from falling on you so that",260, 360);
  text("you don't lose a try. If you lose all three",260, 410);
  text("tries, you will lose the game.",260, 460);
  
  image(right_arrow,  170, 500, 86, 98);
  text("Use the arrow keys to move.",260, 560);
  image(arrow_keys,  750, 470, 150, 100);
  text("Use      to move up,",260, 610);
  image(up_key,  335, 580, 41, 41);
  text("to move down,",335 + 300, 610);
  image(up_key,  335 + 250, 580, 41, 41);
  text("to move left,",330, 660);
  image(left_key,  280, 630, 41, 41);
  text("and      to move right.",555, 660);
  image(right_key,  625, 630, 41, 41);
 
  // draw home btn and perform functionality to go back to the home page
  homeBtn(200 - 92 / 2, height - 120); 
 
  image(sound_btn, width - 200 - 92 / 2, height - 120, 92, 90);
}
