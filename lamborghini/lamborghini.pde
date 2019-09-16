float mouseDistance;
PImage lambo;

float lamboX;
float lamboY;


float lamboXSpeed;
float lamboYSpeed;

int catches;


float r;
float g;
float b;




void setup(){
 size(displayWidth, displayHeight);
 background(0);
 lambo = loadImage("lambo.jpg");
 
  lamboX = random(26, width-26);
  lamboY = random(26, height-26);
  lamboXSpeed = 20;
  lamboYSpeed = 20;
  imageMode(CENTER);
   for(int i = 0; i< 100; i=i+10)
  ellipse(i, i, 10, 10);
  
  
  }
  
  
void draw(){
   background(0);
  fill(252, 5, 22);
  textAlign(CENTER);
  textSize(30);
  text("catches" + catches, width/2, 25);
 
  //lamboX = lamboX + lamboXSpeed;
  //lamboY = lamboY + lamboYSpeed;
  

  image(lambo, lamboX, lamboY, 100, 100);
  
  if(lamboX <= 20 || X >= width-20){
    lamboXSpeed = -lamboXSpeed;
  }
  
  if(lamboY <= 20 || lamboY >= height-20){
    lamboYSpeed = -lamboYSpeed;
  }
  
  if(dist(mouseX, mouseY, lamboX, lamboY) < 25){
  lamboX = random(20, width-20);
  lamboY = random(20, height-20);
  lamboXSpeed = lamboXSpeed+1;
  lamboYSpeed = lamboYSpeed+1; 
  catches++;
  println(catches);
  
  
  
  }
  //if (catches == 1){
  //  background(135);
  //  }
  //  if (catches == 2){
  //  background(76);
  //}
  //if (catches == 3){
  //  background(32); 
  //}
  if (catches == 10){
    background(0);
    text("You Win!", width/2, 50);
   mouseDistance = dist(mouseX, mouseY, pmouseX, pmouseY);
  strokeWeight(mouseDistance);
  stroke(random(255), random(255), random(255));
  line(mouseX, mouseY, pmouseX, pmouseY);
  println(mouseDistance);
  
  }
    
  
  
}
