class Pong{

 float x;
 float y;
 float xspeed;
 float yspeed;
 float r;
 //float direction;
 
 Pong(){
 xspeed=random(1,10);
 yspeed=random(1,10);
 x= width/2;
 y=height/2;  
 r=10;
 }
 
 void pongDisplay(){
ellipseMode(CENTER);
if (x>width/2){
fill(30,150,150);
}else{
  fill(200,100,0);
}
ellipse(x,y,r*2,r*2);
 }
 
 void pongMove(){
   x=x+xspeed;
   y=y+yspeed;
 }
   
   void checkPaddleA(Paddle p){
   if(y<p.y+p.h/2 && y>p.y-p.h/2 && x-r < p.x+p.w/2){
     fill(200,100,0);
     xspeed *=-1;
   }
   }
     void checkPaddleB(Paddle p){
    if(y<p.y+p.h/2 && y>p.y-p.h/2 && x+r > p.x-p.w/2){
     fill(30,150,150);
     xspeed *=-1; 
   }
   }
 
 void pongBounce(){
 if((x>width)){
   aScore++;
  x=400;
  y=300;
 }
  if((x<0)){
   bScore++;
  x=400;
  y=300;
 }else if(y<=0){
   yspeed *= -1;
 } else if(y>=height){
   yspeed *= -1;
 }
 }
 
 /*void paddleBounce(){
 if((pongDisplay==display)||(pongDisplay==display)){
 speed=speed*-1;
 }
 }*/
 
 
}
