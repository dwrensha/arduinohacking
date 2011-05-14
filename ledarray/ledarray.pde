import processing.serial.*;

Serial myPort;  // Create object from Serial class
int xval; 
int yval; 

int size = 30;
float xpos, ypos;    // Starting position of shape    
float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom

void setup()
{
  size(500,700);
  smooth();
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  xpos = width/2;
  ypos = height/2;
  ellipseMode(CORNER);
}


void draw()
{
  background(100);
  stroke(255);
/*  for(int i = 0; i<5; i++)
  {
    line(i*100,0, i*100, height);
  }
  for(int i = 0; i<7; i++)
  {
    line(0, i*100, width,i*100);
  }
  */

  for(int i = 0; i<5; i++)
  {
    for(int j = 0; j<7; j++)
    {
      fill(90,130,65);
      noStroke();
      ellipse((i*100)+10,(j*100+10),80,80);
    }
    
  }
  xval = int(map(mouseX, 0, 500, 0, 5));
  yval = int(map(mouseY, 0, 700, 0, 7));
  noStroke();
  fill(105,255,44);
  ellipse(((xval)*100)+10,((yval)*100)+10,80,80);
  myPort.write((xval*8)+yval);
  println((xval*100)+yval);

}


/*
void mousePressed()
 {
 xval = int(map(mouseX, 0, 500, 1, 6));
 yval = int(map(mouseY, 0, 700, 1, 8));
 myPort.write((xval*8)+yval);
 println((xval*100)+yval);
 }
 */


/*  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  if (xpos > width-size || xpos < 0) {
    xdirection *= -1;
  }
  if (ypos > height-size || ypos < 0) {
    ydirection *= -1;
  }
  
ellipse(xpos+size/2, ypos+size/2, size, size);
} */
