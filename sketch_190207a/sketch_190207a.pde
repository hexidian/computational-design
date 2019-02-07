float rotated = 0.0;
int special_moved = 0;
int special_direction = 1;
boolean mid_fill = false;

void setup() {
  size(640, 640);
  background(0, 0, 0);
}

void draw() {

  translate(width/2, height/2);
  rotate(rotated);
  rotated+=PI/100;
  if (special_moved==-200 || special_moved==0) {
    special_direction*=-1;
  }

  special_moved+=2*special_direction;

  if (special_moved==100) {
    mid_fill = !mid_fill;
  }

  background(0, 0, 0);

  if (mid_fill) {
    fill(255);
  } else {
    fill(0, 255, 0);
  }
  rect(-50, -50, 100, 100);

  fill(150);
  rect(-50, 50, 100, 100);


  fill(80);
  rect(-50, -150, 100, 100);

  //the special one
  fill(0);
  rect(50+special_moved, -50, 100, 100);
}