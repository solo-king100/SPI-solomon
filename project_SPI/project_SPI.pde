Paddle a;
Paddle b;
Pong pong;


int aScore=0;
int bScore=0;
String aControls=("W-up and S-down");
String bControls=("I-up and K-down");

void setup(){
  size(800,600);
  stroke(255);
  
  a =new Paddle(10,15,120,200,100,0);
  b =new Paddle(790,15,120,30,150,150);
  
  pong = new Pong();
}


  
void draw(){
background(0);

line(400,0,400,600);
frameRate(24);

//Bounce off of paddles a and b.
pong.checkPaddleA(a);
pong.checkPaddleB(b);

//Paddle a
a.display();
a.move();

//Paddle b
b.display();
b.move();

//Ball movement and display
pong.pongDisplay();
pong.pongMove();
pong.pongBounce();

//Text on screen
fill(255);
textSize(30);
text(aScore,40,40);
text(bScore,750,40);

textSize(15);
text(aControls ,40,10);
text(bControls ,660,10);


//control movement for paddles a and b.
}
void keyPressed(){
   if(key=='w'){
    a.bounce(-20);
    }else if(key=='s'){
    a.bounce(20);
    }
if(key=='i'){
    b.bounce(-20);
    }else if(key=='k'){
    b.bounce(20);
    }
}
