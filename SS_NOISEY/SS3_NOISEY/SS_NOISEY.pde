// ** Zarina Barsh, "noisey", manage color with left mouse click //

PImage img1;
PImage img2;
PImage img3;
PFont font;
String quote = "now! Thats something..";
float angle = 0;
float r= 256; 
float g= 256;
float b= 256;

void setup () {
  size (1280, 720);
  img1 = loadImage("7-n.png");
  img2 = loadImage("png-transparent-images-5.png");
  img3 = loadImage("unnamed.png");
  font = createFont("SourceCodePro-Regular.ttf", 24);
  textFont(font);
}

void draw () {
  
 
background (r, g, b);
fill(r * .2, g * 2, b / 2);
 image(img1, 0, 0);
 text(quote, width / 2, height / 2);
 if (mouseX > width/2) { //if test is true run code block
    fill(255, 0, 0);
 image(img2, width * .5, height * .5);
  }

  //if previous test is false, move to this next test
  else if (mouseY > height/2) { 
    fill(0);
   image(img3, width * .25, height * .25);
  }

  //if all previous tests are false execute this code block
  else {
    fill(255);
  }

  fill(5, 32, 59, 90);
//  scale(mouseX / 60.0);
 translate(mouseX, mouseY);
rotate(mouseX / 100.0);
image(img1, 0, mouseY * -1);



}
void mousePressed() { //cretaes a random color switch with each mouse click
  r= random (0, 256);
  g= random (0, 256);
  b= random (0, 256);
  
}
