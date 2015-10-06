/* please implement your assign1 code in this file. */
PImage bg1,bg2;
PImage enemy, fighter,hp,treasure;
int bg1X,bg1Y,bg2X,bg2Y;
float rollSpeed,bloodAmount;
float treasureX,treasureY;
float enemyX, enemyY, enemySpeed;
boolean isPlaying;

void setup () {
  
  
  size(640,480) ;  // must use this size.
  
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  
  bg1X = 0;
  bg2X = -640;
  
  
  rollSpeed = 5;
  enemySpeed = 1;
  bloodAmount = random(5,197);
  treasureX = random(0,640);
  treasureY = random(0,480);
  enemyX = 0;
  enemyY = random(10,470);
  
  isPlaying =true;
  
}

void draw() {
 
  if(isPlaying){
    //backgound
    image(bg1,bg1X,0);
    bg1X+=rollSpeed;
    image(bg2,bg2X,0);
    bg2X+=rollSpeed;;
    //background repeat
    if(bg1X==640){
      //bg1X = bg1X-1280;
      bg1X = -640;
    }else if(bg2X==640){
      //bg2X-=1280;
      bg2X = -640;
    }
    
    //fighter image
    image(fighter,width-60,mouseY);
    
    //hp and blood
    fill(255,0,0);
    noStroke();
    rect(29,20,bloodAmount,20);
    image(hp,20,20);
        
    //treasure
    image(treasure,treasureX,treasureY);
       
    //enemy
    image(enemy,enemyX,enemyY);
    enemyX += enemySpeed;
    enemyX %= width;
  }

}

void keyPressed(){
  isPlaying = !isPlaying;
}
