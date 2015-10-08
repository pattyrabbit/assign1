
PImage fighterImg;
PImage bg1Img;
PImage enemyImg;
PImage treasureImg;
PImage hpImg;
PImage bg2Img;

int x;

int a,b;
{a=floor(random(420));
 b=floor(random(400));}
 
int y;
{y=floor(random(200));}

int z;
  
void setup () {
  size(640,480) ; 
  x=0;
  z=0;
  fighterImg = loadImage("img/fighter.png");
  bg1Img = loadImage("img/bg1.png");
  enemyImg = loadImage("img/enemy.png");
  treasureImg = loadImage("img/treasure.png");
  hpImg = loadImage("img/hp.png");
  bg2Img = loadImage("img/bg2.png");
  }

void draw() {
  image(bg1Img,z,0);
  image(bg2Img,z+640,0);
  z -=1;
  z %=480;
  
  image(fighterImg,x,200);
  x +=5;
  x %=480;
  image(enemyImg,100,100);
  image(treasureImg,a,b);
  stroke(0);
  fill(255,0,0);
  rect(20,15,y,15);
  image(hpImg,10,10);
  
  }

