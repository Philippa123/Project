PImage img;
boolean sunlit = true;
PImage mySun;
PImage myFlower;
PImage myPlant;
PImage myNight;
PImage myMoon;
PImage myCat;
PImage myDog;

float alpha = 0;  // This variable will control the transparency (0 = img, 255 = myNight).



void setup() {
  size(640, 360);
  img = loadImage("Window.jpg");
  myNight = loadImage ("Nighttime.jpg"); 
  
  myMoon = loadImage ("Moon.png") ;
  


 //size(400,400);
  mySun = loadImage("Sun.Png");
  
  myCat = loadImage("sleeping.png");
  imageMode (CENTER) ;

 //size(50,50); {
  myFlower = loadImage("Flower.Png");
  imageMode (CORNER) ;
 
 //size (150,150); 
 myPlant = loadImage ("Plant.png");
 imageMode (CORNER) ; 
 
 myDog = loadImage("dog.png");
 

 }
 
void draw() {
  if (sunlit) {
    background(10);  // Set the background color to black for the day scene.
    image(img, 0, 0);
    image(mySun, mouseX, 10, 100, 100);
     image(myPlant, 450, 160);
       tint(255,127);
    image(myDog, 300, 180);
    
   
     
  } else {
    // Transition between day and night.
    background(10);  // Set the background color to black for the night scene.
      image(myPlant, 450, 160);
       tint(255,127);
       image(myCat, 300, 220);


    
    // Use tint to control the transparency.
    tint(255, 127 - alpha);
    image(img, 0, 0);
    image(myMoon, mouseX,10,100,100);
    tint(255, alpha);
    image(myNight, 0, 0);
 
    
    // Gradually increase the alpha value for the transition.
    alpha += 1;
    
    // If the transition is complete, reset the alpha to 0.
    if (alpha > 255) {
      alpha = 0;
    }
  }
}



void mousePressed() {

    sunlit = !sunlit;

}
