//declare
PImage underwater;
PImage fish;
PImage turtle;
PImage shark;
float scalefactor=.2;
PVector loc, vel, acc;

void setup() {
  size(800, 600);
  //Load images
  underwater = loadImage("underwater.jpg");
  fish = loadImage("fish.png");
  turtle = loadImage("turtle.png");
  shark = loadImage("shark.png");

  //Declare vectors
  loc = new PVector (width/2, height/2);
  vel = new PVector (random(30), random(50));
  acc = PVector.random2D();
  noCursor(); //no cursor
}

void draw() {
  background(0);
  //load images
  image(underwater, 0, 0);
  filter(BLUR, 2); //blur water
  image(fish, mouseX, mouseY, fish.width*scalefactor, fish.height*scalefactor);
  image(turtle, loc.x, loc.y);
  // image(shark, loc.x, loc.y);

  //Vector
  acc = PVector.random2D();
  acc.mult(1); 
  vel.add(acc);  
  vel.limit(10);
  loc.add(vel);



  //wrap pictures around  
  if (loc.x >= width) {
    loc.x = 0;
  } else if (loc.x  <= 0) {
    loc.x = width ;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y <= 0) {
    loc.y = height ;
  }
}