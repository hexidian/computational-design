int frame;

void setup() {
  size(500, 500);
}

void draw() {

  translate(width/2, height/2);

  frame = frameCount % 241;

  if (frame <= 120) {
    background(0);
    fill(255);
    ellipse(0, 0, width*sqrt(2.0)*(120-frame)/120, height*sqrt(2.0)*(120-frame)/120);
  } else {
    background(255);
    fill(0);
    rect(-width/2*(240-frame)/120,-height/2*(240-frame)/120,width*(240-frame)/120,height*(240-frame)/120);
  }
  
}