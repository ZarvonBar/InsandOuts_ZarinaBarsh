// WEEK 2 "pyramid" BY ZARINA BARSH//
// TRANGLES on right rectangles on the left of the mouse movement.
//random color change of background with mouse click


// declares the color spectrum
float r= 256; 
float g= 256;
float b= 256;


void setup(){
    size(1280,720);
    rectMode(CENTER);}

    
void draw(){ 
  background (r, g, b); // random color picker

if (mouseX> width/2) { // navigating the mouse to the right
  
triangle(0, 720, 640, 0, 1280, 720); // 1
triangle(20, 700, 640, 20, 1260, 700); // 2
triangle(60, 660, 640, 80, 1220, 660); // 3
triangle(80, 640, 640, 100, 1200, 640); //4 
triangle(100, 620, 640, 120, 1180, 620); //5
triangle(120, 600, 640, 140, 1160, 600); //6
triangle(140, 580, 640, 160, 1140, 580); //7
triangle(160, 560, 640, 180, 1120, 560); //8
triangle(180, 540, 640, 200, 1100, 540); //9
triangle(200, 520, 640, 220, 1080, 520); //10
triangle(220, 500, 640, 240, 1060, 500); //11
}
else if (mouseY> height/2) { // navigating the mouse to left
  fill(150, 18, 244, 56);
    rect(width/2, height/2, 300, 300);
      rect(width/2, height/2, 280, 280);
        rect(width/2, height/2, 260, 260);
           rect(width/2, height/2, 240, 240);
           rect(width/2, height/2, 220, 220);
           rect(width/2, height/2, 200, 200);
             rect(width/2, height/2, 180, 180);
     rect(width/2, height/2, 160, 160);
      rect(width/2, height/2, 140, 140);
  rect(width/2, height/2, 120, 120);
   rect(width/2, height/2, 100, 100);
 
 
 
 
}
}
  



void mousePressed() { //cretaes a random color switch with each mouse click
  r= random (0, 256);
  g= random (0, 256);
  b= random (0, 256);
  
}
