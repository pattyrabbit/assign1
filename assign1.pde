
PImage fighterImg;
PImage bg1Img;
PImage enemyImg;
PImage treasureImg;
PImage hpImg;
PImage bg2Img;

int c;

int a,b;
{a=floor(random(420));
 b=floor(random(400));}
 
int d;
{d=floor(random(200));}

int bg;
  
void setup () {
  size(640,480) ; 
  c=0;
  bg=0;
  fighterImg = loadImage("img/fighter.png");
  bg1Img = loadImage("img/bg1.png");
  enemyImg = loadImage("img/enemy.png");
  treasureImg = loadImage("img/treasure.png");
  hpImg = loadImage("img/hp.png");
  bg2Img = loadImage("img/bg2.png");
  }

void draw() {
  image(bg1Img,bg,0);
  image(bg2Img,bg-bg1Img.width,0);
  image(bg1Img,bg-bg1Img.width-bg2Img.width,0);
  bg +=1;
  bg %=(bg1Img.width+bg2Img.width);
  
  image(enemyImg,c,200);
  c +=4;
  c %=640;
  
  image(fighterImg,560,300);
  
  image(treasureImg,a,b);
  
  stroke(0);
  fill(255,0,0);
  rect(20,15,d,15);
  
  image(hpImg,10,10);
  }
