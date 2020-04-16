
float sX, sY, sLen, sS, sRad;
void setup() {
  size(600, 600);
  sX = width/2;
  sY = height/2;
  sLen = 200;
  sS = 100;
}

void draw() {
  background(190);
  sX += (mouseX-sX)/sS;
  sY += (mouseY-sY)/sS;
  float f = (1000-dist(sX,sY, mouseX,mouseY));       // 
  sRad = f/10;                                       //
  sLen = f/4;                                        //
  for(int y = 0; y<height+1; y+=100) {
    for(int x = 0; x<width+1; x+=100) {
      noStroke();
      fill(150);
      circle(x, y, 8);
      stroke(70);
      strokeWeight(f/80);                            //
      if(dist(x,y, sX,sY) < sLen) line(x, y, sX, sY);
    }
  }
  fill(50);
  noStroke();
  circle(sX, sY, sRad);                               //
  fill(225);                                          //
  circle(sX, sY, sRad*.6);                               //
  fill(100);                                          //
  circle(sX+(mouseX-sX)/(sRad*.8), sY+(mouseY-sY)/(sRad*.8), sRad*.2);                               //
} 
