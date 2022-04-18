PImage bgImg; //background img
PImage soilImg; //soil img
PImage lifeImg; //life img
PImage soldierImg; //soldier img
int x = 0; //make soldiers move
PImage robotImg; //robot img
int lightPos = 240+25; //robot lightPos
PImage groundhogImg; //groundhog img

void setup(){  // Enter Your Setup Code Here
  size(640, 480, P2D); //canvas size
    bgImg = loadImage("img/bg.jpg"); //Load the background img(path in the img) into the processing
    soilImg = loadImage("img/soil.png"); //Load the soil img(path in the img) into the processing
    lifeImg = loadImage("img/life.png"); //Load the life img(path in the img) into the processing
    soldierImg = loadImage("img/soldier.png"); //Load the soldier img(path in the img) into the processing
    robotImg = loadImage("img/robot.png");//Load the robot img(path in the img) into the processing
    groundhogImg = loadImage("img/groundhog.png"); //Load the groundhog img(path in the img) into the processing
    
    
}

 
void draw(){   // Enter Your Code Here
  image(bgImg,0,0);  //Draw background img on (0,0)
  image(soilImg,0,160);  //Draw soil img on (0,160)
  image(lifeImg,10,10);   //Draw life img on (10,10)
  image(lifeImg,80,10);   //Draw life img on (80,10)
  image(lifeImg,150,10);  //Draw life img on (150,10)
  image(soldierImg,x,400);   //Draw soldier img on (x,400)
    x=x+1;  //soldiers move --> right
    //When x moves out of the canvas, it still won't stop
    //So x must be able to return to the seat
    if(x>640){  //If the position of x is greater than the width of the canvas
      x = 0;  //x will return to the position of 0
    }
  image(robotImg, 400, 160);  //Draw robot img on (400, 160)
  
  strokeWeight(10.0);  //line(width,height)=(10.0) --> lightPos
  stroke(255,0,0);  //line color(red) --> lightPos
  line(lightPos-20,160+37,lightPos,160+37);  //line location --> lightPos(light length,left high,right high)
    lightPos = lightPos-2;  //lightPos move -->left
    //When lightPos moves out of the canvas, it still won't stop
    //So lightPos must be able to return to the seat
    if(lightPos<0){   //If the position of lightPos is greater than the width of the canvas
      lightPos = 420;   //lightPos will return to the position of 420
    }
    
  strokeWeight(15.0); //line(width,height)=(15.0) --> grassland
  stroke(124,204,25); //line color(green) --> grassland
  line(0,152.5,640,152.5); //line location --> grassland
  
  image(groundhogImg,280,80);//Draw groundhog img on (280,80)
  
  stroke(300, 300, 0); --> sun
  ellipse(590,50, 130, 130); --> sun
  stroke(253, 184, 19); --> sun
  fill(253, 184, 19); --> sun
  ellipse(590,50, 120, 120); --> sun
}
