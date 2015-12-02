//declare
PImage underwater;
PImage fish;
PImage turtle;
PImage shark;
PImage shark2;
float scalefactor=.2;
PVector loc, vel, acc;

void setup() {
  //canvas size
  size(800, 600);
  
  //Load images
  underwater = loadImage("underwater.jpg");
  fish = loadImage("fish.png");
  turtle = loadImage("turtle.png");
  shark = loadImage("shark.png");
  shark2 = loadImage("shark2.png");
  
  //mask 2 shark pictures
  shark.mask(shark2); 

  //Declare vectors
  loc = new PVector (width/2, height/2);
  vel = new PVector (random(30), random(50));
  acc = PVector.random2D();
  
  //no cursor
  noCursor(); 
}

void draw() {
  //background
  background(0);
  
  //load images
  image(underwater, 0, 0);
  
  //blur water
  filter(BLUR, 2); 
  
  //load images
  image(fish, mouseX, mouseY, fish.width*scalefactor, fish.height*scalefactor);
  image(turtle, loc.x, loc.y);
  
  //if fish go to the right, sharks appear
if(mouseX>width/2) {
  image(shark2,width*.75,height/2);
  image(shark,width*.75,height/2);
}

  //vectors
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