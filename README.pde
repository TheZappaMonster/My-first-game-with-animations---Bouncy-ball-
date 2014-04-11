My first game with animations! (Bouncy-ball)
============================================

       
```
float boll_x;
float boll_y;

float hastighet_y;
float hastighet_x;

float movingPlatform_x;
float movingPlatform_y;

PImage photo;

int score;

void setup() {
  photo = loadImage("Difference_between_Atmosphere_and_Space1-2.jpg");
  frameRate(60);
  noCursor();  
  size(1330, 800);
  movingPlatform_y = 665;
  movingPlatform_x = mouseX;
  boll_x = movingPlatform_x;
  boll_y = movingPlatform_y - 20;
  hastighet_y = -6;
  hastighet_x = random(-6, 6);
   score = 0;
}


void draw() {
  image(photo, 0, 0);
  fill(255, 40, 160);

  //rect (x=400, y=665)
  movingPlatform_x = mouseX;
  rect(movingPlatform_x, movingPlatform_y, 300, 20, 15);

  fill(0, 255, 77);
  //ellipse(560, 645, 35, 35);
  ellipse(boll_x, boll_y, 35, 35);
  boll_y = boll_y + hastighet_y;
  boll_x = boll_x + hastighet_x;

  textSize(60);
  fill(0, 0, 255);
  text("Score= " + score, 665, 100);

  if (boll_y < 0) {

    hastighet_y = hastighet_y * -1;
  }
  if (boll_y > movingPlatform_y) {
    if (boll_x > movingPlatform_x && boll_x < movingPlatform_x + 300) {
      // om den träffar plattformen
      hastighet_y = hastighet_y * -1;
      score = score + 100;
      hastighet_y = hastighet_y * 1.1;
    } else {
       setup();

    }
  } 

  if (boll_x < 0) {
    hastighet_x = hastighet_x * -1;
  }
  if (boll_x > width) {
    hastighet_x = hastighet_x * -1;
  }

  // om boll y är mindre än 0, då ska vi ändra riktning på bollen, ändra hastigheten.

  //rect=fyrkant / ellipse=cirkel / strokewidth=line color / fill=color inside

  println("boll x är: " + boll_x + ", boll y " + boll_y + "------ platform_x left:" + movingPlatform_x  + ", platform_x right: " + (movingPlatform_x + 300)  );

  println("hastighet x " + hastighet_x  + ", hastighet y " + hastighet_y  );

  println("Score= " + score);
}
```
