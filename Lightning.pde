float startX = 240;
float startY = 240;
float endX = 0;
float endY = 0;
float weight = 2;
float vx, vy;
PImage img;

// main idea -- window shattering w/cracks
// COULD GO FOR A BLACK/WHITE VIBE

void setup() {
  size(480,480);
  background(255, 250, 240);
  fill(200, 220, 255);
  noStroke();
  rect(20, 20, 440, 440);
  
  fill(255);
  noStroke();
  beginShape();
  vertex(20, 100);
  vertex(20, 140);
  vertex(140, 20);
  vertex(100, 20);
  vertex(20, 100);
  endShape();
  
  fill(255);
  noStroke();
  beginShape();
  vertex(20, 180);
  vertex(20, 220);
  vertex(220, 20);
  vertex(180, 20);
  vertex(20, 180);
  endShape();
  
  // background
  noStroke();
  fill(160, 190, 150);
  rect(20, 400, 440, 60);
  
  fill(160, 130, 100);
  rect(280, 280, 20, 120); 
  
  fill(130, 200, 170);
  ellipse(290, 290, 80, 80);
}
void draw() {
  // window
  noStroke();
  fill(230, 200, 150);
  rect(20, 40, 20, 400);
  rect(440, 40, 20, 400);
  fill(180, 150, 100);
  rect(15, 20, 450, 20);
  rect(15, 440, 450, 20);
  
  
}
void mousePressed() {
  //stroke(255);
  //noFill();
  //strokeWeight(1);
  //ellipse(mouseX, mouseY, (float)(Math.random()*80),(float)(Math.random()*80));
  for(int i = 0; i < 24; i++) {    
    stroke(255);
    weight = 3;
    startX = mouseX;
    startY = mouseY;
    endX = mouseX;
    endY = mouseY;
    if ((int)(Math.random()*2) == 0) {
      vx = -(float)(Math.random()*9+0.001);
    } else {
      vx = (float)(Math.random()*9+0.001);
    }
    if ((int)(Math.random()*2) == 0) {
      vy = -(float)(Math.random()*9)+0.001;
    } else {
      vy = (float)(Math.random()*9)+0.001;
    }
    //println(vx + " " + vy);
    while(!(endX >= 440) && !(endY >= 440) && !(endX <= 40) && !(endY <= 40)) {
      strokeWeight(weight);
      endX = startX + (float)(Math.random()*vx);
      endY = startY + (float)(Math.random()*vy);
      stroke(255);
      line(startX, startY, endX, endY);
      stroke(180, 200, 235);
      line(startX, startY-1, endX, endY-1);
      startX = endX;
      startY = endY;
      weight *=0.98;
    }
  }
}
