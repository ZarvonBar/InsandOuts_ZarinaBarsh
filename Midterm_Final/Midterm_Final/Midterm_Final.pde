/* Zarina Barsh  Tetris game demo**/

// make a grid
// 1st make the border and a shape "done"

// untill it touches the bottom it stops
//then loop it bring in a second shape



float x= width;
float y= height;

float opacity = 0;
float fade = 0;
float fall = 0;
String quote = "TETRIS";


int currentTime = 0;
int timer = 1000;
int savedTime = 0;

int grid = (10);
int squareSize;
PShape shapeT;

PShape shapeI;
PShape shapeO;
PShape shapeP;
PShape shapeZ;
PShape shapeJ;
PShape shapeL;

void setup() {
size(500, 800);
shapeMode(CENTER); // alligns each shape at the center
textAlign(CENTER);
textSize(88);
squareSize = (width)/grid;// grid size
frameRate(1);

//rotate(CENTER);
// Tetris shapes vertex points
 shapeT = createShape();
   shapeT.beginShape(); 
   shapeT.fill(220);
   shapeT.strokeWeight (2);
   shapeT.stroke(10);
   shapeT.vertex(40,0);
   shapeT.vertex(40, 40);
   shapeT.vertex(0, 40);
   shapeT.vertex(0, 80);
   shapeT.vertex(120, 80);
   shapeT.vertex(120, 40);
   shapeT.vertex(80, 40);
   shapeT.vertex(80, 0);
   shapeT.vertex(40, 0);
   shapeT.endShape(CLOSE); 
}

  /**shapeI = createShape();
  shapeI.beginShape(); 
  shapeI.vertex(40, 0); 
  shapeI.vertex(40, 40); 
  shapeI.vertex(0, 40);
  shapeI.vertex(0, 80);
  shapeI.vertex(80, 80);
  shapeI.vertex(80, 40);
 shapeI.vertex(120, 40);
  shapeI.vertex(120, 0);
  shapeI.endShape(CLOSE);**/
  
 /** u = createShape();
  u.beginShape(); 
  u.vertex(0, 0);
  u.vertex(0, 40); 
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
  w.beginShape(); 
  w.vertex(0, 0); 
  w.vertex(0, 40); 
  w.vertex(40, 40);
  w.vertex(40, 80);
  w.vertex(120, 80);
  w.vertex(120, 40);
  w.vertex(80, 40);
  w.vertex(80, 0);
  w.endShape(CLOSE);
 */
void draw() {
 
   background(255);
    // these 2 for loops draw the grid
  for (int w = 0; w < width; w += squareSize) {
    for (int h = 0; h < height; h += squareSize) {
      rect(w, h, squareSize, squareSize); // draws a perfect square
  }
  }

       
   //  ________________________________________
// welcome text
fill(opacity);
text(quote, width/2, height/2);

opacity = opacity + fade;

 if (opacity > 255 || opacity < 0){
   fade = -fade;
 }


  
   if (key == ENTER) { 
   background(255);
 
   }  
//  ________________________________________

  //y value of  increments after we exit the for loop
for (int x=0; x<=width; x+=50) {
     y++;
if (y>=height) {
  y=+0; //resets the value of the shape back avobe the canvas

}else {
  fall =0;
}
}
    shape(shapeT, x, y);
  if (keyPressed){
           background (255);
    shape(shapeT, x, fall);
  if (fall < height){
     y++;
   }
  
   else {
     y = 0;
     fall ++;
   }
  
  //  ________________________________________

 
//  ________________________________________


  }
  //  ________________________________________
  //Millissetup

  currentTime = millis();
  if(currentTime - savedTime > timer) {
  savedTime = currentTime;
}
  else if (currentTime-savedTime > timer) {
  //y+=5;
  savedTime=currentTime;
}

} 

//  ________________________________________
void keyPressed() {
       background (0);
  shape(shapeT, x, y);
  
 
if((keyPressed == true) && (key == CODED)) {
  if (keyCode == UP) {
    y--;
  } 
  else if(keyCode == DOWN){
 y++; 
  }   
  else if (keyCode == LEFT){
  x--; 
  }else if(keyCode == RIGHT){
 x++; 
  } 
   else if (keyCode ==DOWN ) {
   y++;
 }
}


}
