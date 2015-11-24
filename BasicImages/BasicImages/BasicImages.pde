PImage spring;
float scalefactor=2;


void setup() {
  size(800, 600);

  spring = loadImage("picture.jpg");
  noCursor();
}


void draw() {
  background(0);
  image(spring, width/2, height/2, spring.width*scalefactor, spring.height*scalefactor);
  for(int i = 0; i < width; i++) {
  int x = int(random(width));
  int y = int(random(height));
  }
}