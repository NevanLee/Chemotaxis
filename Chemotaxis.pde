 Bacteria[] bob = new Bacteria[100]; 
 void setup()   
 {     
   size(500, 500);
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(210, 180, 140);  
   for(int i = 0; i < bob.length; i++)
   {
    bob[i].move();
    bob[i].show();
   }
 }  
 class Bacteria    
 {     
  int myColor;
  float myX;
  float myY;
  Bacteria()
  {
    myColor = color(0,155,0);
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
    if(myX > 500){
      myX = 0;
    }if(myY > 500){
      myY = 0;
    }if(myX < 0){
      myX = 500;
    }if(myY < 0){
      myY = 500;
    }
  }
  void move()
  {
    if(mouseX > myX){
    myX = myX + ((int)(Math.random() * 11) - 5);
    }else{
    myX = myX + ((int)(Math.random() * 11) - 7);
    }if(mouseY > myY){
    myY = myY + ((int)(Math.random() * 11) - 5);
    }else{
    myY = myY + ((int)(Math.random() * 11) - 7);
    }
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, 15, 15);
  }
 }    
