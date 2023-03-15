class Paddle{
  
  int x;
  int y;
  int speed;
  int h;
  int w;
  float r;
  float g;
  float b;
Paddle(int tempX, int w, int h, float r, float g, float b ){
x=tempX;
y=height/2;
this.h=h;
this.w=w;
this.r=r;
this.g=g;
this.b=b;
}



void display(){
 
rectMode(CENTER);
fill(r,g,b);
rect(x,y,w,h,40);
}

void move(){
  if(y < 0){
  y= 0;
} else if(y> height){
 y = height;
}
}


  void bounce(int speed){
y+=speed;
}
 
  
  

//void control(){
 


//}
}
