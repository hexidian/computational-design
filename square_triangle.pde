int frame;
float rotation;
int fFrame;
void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  frame = frameCount%501;
  if (frame >= 0 && frame <= 250) {
    background(0);
    fill(255);
    triangle(0, 250, 250, 0, 250-frame, 250-frame);
    triangle(250, 0, 500, 250, 250+frame, 250-frame);
    triangle(0, 250, 250, 500, 250-frame, 250+frame);
    triangle(500, 250, 250, 500, 250+frame, 250+frame);
  } else if (frame > 250 && frame <= 350) {
    background(255);
    fill(0);
    rotation = PI/4/100*(frame-250) + PI/4;
    translate(width/2, height/2);
    rotate(rotation);
    rect(-250/sqrt(2), -250/sqrt(2), 500/sqrt(2), 500/sqrt(2));
  } else if (frame > 350 && frame <= 400) {
    background(255);
    fill(0);
    translate(width/2, height/2);
    rect(-250/sqrt(2)*(1+(sqrt(2)-1)/50*(frame-350)), -250/sqrt(2)*(1+(sqrt(2)-1)/50*(frame-350)), 500/sqrt(2)*(1+(sqrt(2)-1)/50*(frame-350)), 500/sqrt(2)*(1+(sqrt(2)-1)/50*(frame-350)));
  } else {
    fFrame = frame-400;
    background(0);
    translate(width/2, height/2);
    fill(255);
    
    triangle(0, 0, 0, -fFrame/100.0*250, -fFrame/100.0*250, 0);
    triangle(0, 0, 0, fFrame/100.0*250, -fFrame/100.0*250, 0);
    triangle(0, 0, 0, fFrame/100.0*250, fFrame/100.0*250, 0);
    triangle(0, 0, 0, -fFrame/100.0*250, fFrame/100.0*250, 0);
    
  }
}