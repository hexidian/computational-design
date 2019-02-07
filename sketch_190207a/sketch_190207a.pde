float rotated = 0.0;
float green_moved = 0.0;
int green_direction = 1;

void setup(){
  size(640,640);
  background(0,0,0);
}

void draw(){
  
  translate(width/2,height/2);
  rotate(rotated);
  rotated+=0.02;
  if(green_moved==-200 || green_moved==0){
    green_direction*=-1;
  }
  green_moved+=1*green_direction;
  
  fill(255);
  background(0,0,0);
  rect(-50,-50,100,100);
  
  fill(150);
  rect(-50,50,100,100);

  
  fill(80);
  rect(-50,-150,100,100);
  
  //the special one
  fill(0);
  rect(50+green_moved,-50,100,100);
}