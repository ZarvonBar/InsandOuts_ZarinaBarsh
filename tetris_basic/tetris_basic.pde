/*int w = 20;*/
int h = 40;
int q = 40; // width andvheight
int dt; // delay
int currentTime = 0;

int timer = 1;
int savedTime = 0;
int r = 0;
int x = height/2;
int y = 0;

float angle = 0.0;
float speed = 0.5;

Boolean gameOver = false;
Boolean gameOn = false;
//int[] shape = int PShape[5];
//PShape tetrisShape = shape{"s", "t", "u", "v", "w"};
PShape s;
PShape t;
PShape u;
PShape v;
PShape w;

void setup() {
  size(400, 800);
  
  

  frameRate(1);
  s = createShape();
  s.beginShape(); 
  s.vertex(40, 0);
  s.vertex(40, 40);
  s.vertex(0, 40);
  s.vertex(0, 80);
  s.vertex(120, 80);
  s.vertex(120, 40);
  s.vertex(80, 40);
  s.vertex(80, 0);
  s.vertex(40, 0);
  endShape(CLOSE); 
  
  t = createShape();
  t.beginShape(); 
  t.vertex(40, 0); 
  t.vertex(40, 40); 
  t.vertex(0, 40);
  t.vertex(0, 80);
  t.vertex(80, 80);
  t.vertex(80, 40);
  t.vertex(120, 40);
  t.vertex(120, 0);
  endShape(CLOSE);
  
  u = createShape();
  u.beginShape(); 
  u.vertex(0, 0);
  u.vertex(0, 40); // 
  u.vertex(160, 40);
  u.vertex(160, 0); 
  endShape(CLOSE); 
  
  v = createShape();
  v.beginShape(); 
  v.vertex(0, 0); 
  v.vertex(0, 80);  
  v.vertex(80, 80);
  v.vertex(80, 0);
  endShape(CLOSE);
  
  w = createShape();
  w.beginShape(); //shape  5
  w.vertex(0, 0); // top left
  w.vertex(0, 40); // 
  w.vertex(40, 40);
  w.vertex(40, 80);
  w.vertex(120, 80);
  w.vertex(120, 40);
  w.vertex(80, 40);
  w.vertex(80, 0);
  w.endShape(CLOSE);
/*shape[0] = s;
shape[1] = t;
shape[2] = u;
shape[3] = v;
shape[4] = w;*/
}
void draw () {

  background(random(255), random(255), random(255)); // RANDOM FUNCTION II
  currentTime = millis();
  shapeMode(CENTER);
  shape(s, 200, 0);
  shape(t, 200, 0);
  shape(u, 200, 0);
  shape(v, 200, 0);
  shape(w, 200, 0);
 // shape(t, x, y);
  rotate(angle);

 // ellipse(width/2, ellipseY, 100, 100);
 // rect(width/2, height/2, 40, 40); // shape 1
 
  if (currentTime - savedTime > timer){ 
 y+=10;
    fill(random(255), random(255), random(255)); // RANDOM FUNCTION I
    println("timer triggered");
    savedTime = currentTime;
  }

/*  else {
      = 800;
  }*/
  for (int i = 0; i < 100; i += 10) {
  if (i == 70) {  // If 'i' is 70,
    continue;     // skip to the next iteration,
  }               // therefore not drawing the line.
  line(i, 0, i, height);
  shape(t, 200, 0);
  shape(u, 200, 0);
  shape(v, 200, 0);
  shape(w, 200, 0);
}
}

/*void keyPressed() {
background(255);
 if (keyPressed && (key == CODED)) { // If it's a coded key
if (keyCode == LEFT) { // If it's the left arrow
x -= 10;
} else if (key == CODED && gameOn) {
    switch(keyCode) {
    case LEFT:
    case RIGHT:
    case DOWN:
    case UP:
    case SHIFT:
      piece.inputKey(keyCode);
      break;
    }
  /*else if (keyCode == UP) {
    
    shape  ++ angle

shape(s, x, y);
  //shape(t, x, y);
}} */
