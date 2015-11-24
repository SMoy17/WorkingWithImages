PImage spring;
float scalefactor=2;

void setup() {
  size(800, 600);

  spring = loadImage("picture.jpg");
}


void draw() {
  background(0);
  image(spring, mouseX, mouseY);
  if (mouseX>width/2) {
    filter(POSTERIZE, 8);
  } else {
    filter(BLUR, 6);
  }
}