// Lines
float linex;
float liney;
float linex2;
float liney2;

// First Circle
float x = 250;
float y = 300;
float xSpeed = 2.5;
float ySpeed = 2.5;

// Second Circle
float x2 = 300;
float y2 = 250;
float x2Speed = 5;
float y2Speed = 5;

void setup() {

  // Set Canvas
  size(400, 400);

  colorMode(HSB, 360, 100, 100, 100);
  
  background(0, 0, 100);
}

void draw() {
  
  // Make Circle Black
  noStroke();
  fill(0, 0, 0, 0); 

  // Make Circle
  ellipse(x, y, 50, 50);
  ellipse(x2, y2, 75, 75);

  // Make Circle Move
  // First Circle
  x = x + xSpeed;
  y = y + ySpeed;

  // Second Circle
  x2 = x2 + x2Speed;
  y2 = y2 + y2Speed;

  // Drawing the line
  stroke(390, 90, 90);
  line(linex, liney, linex2, liney2);

  // Reset Circle if it hits the edge of the screen
  // First Circle
  if (x < 0) {    // Left Edge
    xSpeed = random(2, 4);
  }
  if (y > 400) {    // Bottom Edge
    ySpeed = random(-2, -4);
  }
  if (x > 400) {    // Right Edge
    xSpeed = random(-2, -4);
  }
  if (y < 0) {    // Top Edge
    ySpeed = random(2, 4);
  }
  // Second Circle
  if (x2 < 0) {    // Left Edge
    x2Speed = random(2, 4);
  }
  if (y2 > 400) {    // Bottom Edge
    y2Speed = random(-2, -4);
  }
  if (x2 > 400) {    // Right Edge
    x2Speed = random(-2, -4);
  }
  if (y2 < 0) {    // Top Edge
    y2Speed = random(2, 4);
  }

  //Draw lines between circles when touching
  if ( (x < x2 + 50 && x > x2 -50) && (y < y2 + 50 && y > y2 -50) ) {

    linex = x;
    liney = y;
    linex2 = x2;
    liney2 = y2;

    println("yes");
  }
}