 //declare bacteria variables here   
 Bacteria [] colony;
 void setup()   
 {     
   size(500,500);
   background(0);
  colony = new Bacteria[8];
  for(int i=0; i< colony.length; i++)
  {
    colony [i] = new Bacteria();
  }
  frameRate(20);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
  //background(0);
 for(int i=0; i< colony.length; i++)
 {
  colony[i].move();
  colony[i].show();
 }
 }  
 class Bacteria    
 {     
 	//lots of java!
 int myX, myY, myColor;
 Bacteria()
 {
   myX=(int)(Math.random()*300);
   myY=(int)(Math.random()*300);
   myColor=color(((int)(Math.random()*256)+1),((int)(Math.random()*256)+1),((int)(Math.random()*256))+1);
 }
 void move()
 {
  int direction = (int)(Math.random()*4);
 
  if(direction == 0)
  {
    myX = myX + 25; //right
  }
  else if(direction == 1)
  {
   myX = myX - 25; //left
  }
  else if(direction == 2)
  {
    myY = myY + 25; //down
  }
  else // direction must be 3
  {
    myY = myY - 25; //up
  }
 }
void show()
{
  fill(myColor);
  ellipse(myX,myY,10,10);
}

 }