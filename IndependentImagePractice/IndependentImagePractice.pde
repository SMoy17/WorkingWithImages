PImage underwater;
PImage fish;
PImage turtle;
PImage shark;
float scalefactor=.2;
float velX, velY, x, y, x2, y2;

void setup() {
  size(800, 600);
  underwater = loadImage("underwater.jpg");
  fish = loadImage("fish.png");
  turtle = loadImage("turtle.png");
  shark = loadImage("shark.png");

  x = width/2;
  y = height/2;
  x2 = width/2;
  y2 = height/2;
  velX = random(-1, 1);
  velY = random(-3, 3);
  noCursor();
}

void draw() {
  background(0);

  image(underwater, 0, 0);
  filter(BLUR, 2);
  image(fish, mouseX, mouseY, fish.width*scalefactor, fish.height*scalefactor);
  image(turtle, x, y);
  image(shark, x2, y2);

  x +=velX;
  y +=velY;

  if (x >= width) {
    x = 0;
  } else if (x  <= 0) {
    x = width ;
  }
  if (y >= height) {
    y = 0;
  } else if (y <= 0) {
    y = height ;
  }

}