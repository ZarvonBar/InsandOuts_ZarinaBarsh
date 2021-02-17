// ** Zarina Barsh, "noisey", manage color with left mouse click //

PImage img1; // transp image backgroung overlay
PImage img2; // two images for the conditional statement
PImage img3;
PFont font;
String quote = "now! Thats something..";
float angle = 0;
float r= 256; 
float g= 256;
float b= 256;

void setup () {
  size (1280, 720); // canvas size
  img1 = loadImage("7-noise-texture-overlays-4.png");
  img2 = loadImage("png-transparent-images-5.png");
  img3 = loadImage("unnamed.png");
  font = createFont("SourceCodePro-Regular.ttf", 24); // load in the font style
  textFont(font);
}

void draw () {
  
 
background (r, g, b); // clock reactive background

fill(r * .2, g * 2, b / 2);
 image(img1, width * 0.25, height * 0.25); 
 //fill(r * .2, g * 2, b / 2);
 text(quote, width / 2, height / 2); // plasement of the quote 
 if (mouseX > width/2) { //if test is true run code block
    fill(255, 0, 0);
 image(img3, width * .5, height * .5);
  }

  //if previous test is false, move to this next test
  else if (mouseY > height/2) { 
    fill(0);
   image(img2, width * .25, height * .25);
  }

  //if all previous tests are false execute this code block
  else {
    fill(255);
    image(img1, 0, 0);
    text(quote, width / 2.2 , height / 2.3);
  }

  fill(5, 32, 59, 90);
   translate(mouseX, mouseY);
scale(mouseX / 60.0, mouseY / 40.0);

//rotate(mouseX / 100.0);
image(img2, 0, mouseY);



}
void mousePressed() { //cretaes a random color switch with each mouse click
  r= random (0, 256);
  g= random (0, 256);
  b= random (0, 256);
  
}
