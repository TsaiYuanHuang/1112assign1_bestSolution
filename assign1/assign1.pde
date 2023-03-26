    
PImage fighter ; 
PImage enemy ; 
PImage treasure ; 
PImage bg1 ; 
PImage bg2 ; 
PImage hpBar ; 

int bg1X;
int bg2X;
int treasureX;
int treasureY;
int enemyX;
int enemyY;

void setup () {
  size(640, 480) ; 
  
  // load files 
  fighter    = loadImage("img/fighter.png"); 
  enemy      = loadImage("img/enemy.png"); 
  treasure   = loadImage("img/treasure.png"); 
  bg1        = loadImage("img/bg1.png");
  bg2        = loadImage("img/bg2.png");
  hpBar      = loadImage("img/hp.png");

  // position x of backgrounds
  bg1X = 640; 
  bg2X = 0;
  
  //position x and y of treasure and enemy
  treasureX = floor(random(0, 640-41));
  treasureY = floor(random(0, 480-41));
  enemyX = -61;
  enemyY = floor(random(0, 480-10));
 
 }


void draw() {
  background(0);
  
  // show backgrounds
  image(bg1, bg1X-640, 0);
  image(bg2, bg2X-640, 0);
  
  //show fighter (width: 51 pixel)
  image(fighter, width-51, 480/2);
  
  //show health bar (width: 211, seen as 210) and blood
  fill(255, 0, 0);
  rect(20, 10, 105, 30);
  image(hpBar, 10, 10);
  
  //show treasure
  image(treasure,treasureX, treasureY);
  
  //show enemy
  image(enemy, enemyX, enemyY);
  enemyX += 2;
  enemyX %= width;

  // scroll the backgrounds
  bg1X++;
  bg2X++;
  
  //set the range of moving bg
  bg1X %= width*2; //0 ~ 1280-1  (after -640: -640~640)
  bg2X %= width*2; //0 ~ 1280-1 (after -640: -640~640)
  
}
  
