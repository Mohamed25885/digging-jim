PImage 
       img ,playImg,helpImg,exitImg,play,playArrow,help,helpArrow,
       exit,exitArrow,board,help_tag,right_arrow,
       arrow_keys,left_key,right_key,up_key,down_key,
       home_btn,sound_btn,background, sand, front, door, oDoor,rock;
       
PFont font;
int x=420,y=300;
int w = 50, h = 50;
int n = 17;
int m = 24;
int gridX = 0, gridY = 0;
 char[][] grid = new char[n][m];
 int interval = 150;
 int lastExecutionTime = 0;
char pageChr = 's';
GameSettings GAME_SETTINGS;
// initial state of the game
void init(){
 GAME_SETTINGS = new GameSettings();
   loadAssets();
    initGrid();
  playImg = play;
  helpImg = help;
  exitImg = exit;
}





void setup(){
  size(1200,1000);
  smooth();
   
  init();
  
   //println(GAME_SETTINGS.gridHolder[0][0][24]);
  
}


void draw(){

  
  switch(pageChr){
    case 's': // s for start menu page
     startMenuPage();
     break;
    case 'g': // g for game page map to 1
     gamePage();
     break;
    case 'h': // h for guidelines page map to 2
     helpPage();
     break;
    case 'e': // e for exit map to 3
     exit();
     break;
    default:break;
  }
}
