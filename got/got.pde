int x=30;
int y=120;
int life = 5;
int level = 1;
int respawn=10,m;

PImage img, ban,dban;
float GL =205.920;
float px1 =random(10,width/2);
float px2 =random(width/2,width);
float py1 =random(10,height/2);
float py2 =random(10,height/2);

void setup()
{
  size(500,500); 
  img = loadImage("got.png"); 
  ban = loadImage("banner.png");
  dban = loadImage("dBanner.png");
}

void draw()
{
  
  background(#ffffff);
 fill(#CFD3D3);
 textAlign(CENTER);
 textSize(100);
 text("level("+level+");",width/2,height/2);
 
    
  //text(GL-50,width/2,height/2);
  line(0,132+(img.height/(12.5/2)),width,132+(img.height/(12.5/2)));
  x++;
  
  //rectMode(BOTTOM);
  //rect(200,GL,10,135);
  //rect(300,GL-50,10,200);
  image(img, x, y,img.width/12.5,height/(12.5/2)+20);
  if(keyPressed){
     if(key=='k'){
  y=y-2;
  }
  
  else if(key=='m'){
  y=y+2;
  }
  
  }
  /*if((x>200&&x<210)&&y>=120){
    x=0;
    y=120;
  }
  */
  if(level==1){
  level1();
    }
  if(level==2){
  level2();
  }
image(ban, 4, height-150,ban.width/5,ban.height/5);
textSize(40);
text(life+"x life",ban.width/5+50,height-50);

if(life<=0){
  gameOver();    
  text("R.I.P.",ban.width/5+50,height-50);
  image(dban, 4, height-150,dban.width/5,dban.height/5);
  if(keyPressed){
  life = 5;
  
  level1();
  level = 1;
  }
  }
}

void level1()
{
 // x=0;
 fill(0);
 rect(200,GL,10,135);
 rect(160,0,10,105);
  rect(300,GL-50,10,185);
rect(450,0,10,200);
  
  if(((x>70&&x<80)&&y<=105)||((x>190&&x<200)&&y>=120)||((x>450-img.width/12.5&&x<460-img.width/12.5)&&y<=200)){
    x=0;
    y=120;
    life=life-1;
  }
if(x==width){
  x=0;
  level=level+1;
}
}

void level2(){
 fill(#17E33A);
 //textAlign(CENTER);
 //text("level(2);",width/2,height/2-200);
 fill(0);
 rect(200,GL,10,135);
 rect(300,GL-100,10,235);
  if(((x>=200-img.width/12.5&&x<=210-img.width/12.5)&&y>=140)||((x>=300-img.width/12.5&&x<=310-img.width/12.5)&&y>=50)){
    x=0;
    y=120;
  life=life-1;
  }
}

void gameOver()
{
 
  
  
  background(#FC3030);
  fill(#ffffff);
  text("Game_Over",width/2,height/2);
  textSize(25);
  text("press any key to try again",width/2,height/2+25);
  

  
  
  
}
