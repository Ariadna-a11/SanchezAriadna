import ddf.minim.*;
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.*;
import processing.sound.*;
SoundFile DO;
SoundFile RE;
SoundFile MI;
SoundFile FA;
SoundFile SOL;
SoundFile LA;
SoundFile SI;
SoundFile DO2;
PFont p;
PImage flor;
PImage bonsai;
Box2DProcessing box2d;

ArrayList<Particle> particles;

void setup() {

  size(500,300);
  smooth();
  flor = loadImage("f4.png");
  bonsai = loadImage("b6.jpg");
  p = createFont("p.ttf",20);

  
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
 
  box2d.setGravity(0, -5);

  particles = new ArrayList<Particle>();

}

void draw() {

  box2d.step();
 
image(bonsai, 0,0, 500,300);
  
  for (Particle p: particles) {
    p.display();
  }

  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    if (p.done()) {
      particles.remove(i);
    }
  }
 noFill();
 noStroke();
    
 rect(245,155,50,30);

 
 rect(330,140,70,50);

 rect(75,138,70,30);

 
 rect(115,98,80,30);

 
 rect(285,65,90,30);
 
 
 rect(135,65,90,30);

 rect(220,35,90,20);

 
 rect(240,10,90,20);

{
    
    textFont(p);
    textSize(20);
    fill(49,92,21);
    text("Do",260, 180);
  
      textSize(20);
    fill(49,92,21);
    text("Re",330, 160);
    
    textSize(20);
    fill(49,92,21);
    text("MI",105, 160);
    
    textSize(20);
    fill(49,92,21);
    text("FA",170, 120);
    
     textSize(20);
    fill(49,92,21);
    text("SOL",160, 80);
    
     textSize(20);
    fill(49,92,21);
    text("LA",300, 80);
    
    textSize(17);
    fill(49,92,21);
    text("SI",260, 50);
 
    
    textSize(17);
    fill(49,92,21);
    text("DO",280, 30);
    
    
    textSize(15);
    fill(0);
    text("Da click en las ramas del bonsai, crea una cancion y llenalo de flores",10, 300);
    
    
}
  
}

void mousePressed(){
if(mouseX > 245 && mouseX < 295 && mouseY > 155 && mouseY < 185){
DO = new SoundFile (this, "1 DO.wav");
DO.play();
DO.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));

}

if(mouseX > 330 && mouseX < 400 && mouseY > 140 && mouseY < 190){
RE = new SoundFile (this, "3 RE.wav");
RE.play();
RE.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));
}

if(mouseX > 75 && mouseX < 145 && mouseY > 138 && mouseY < 168){
MI = new SoundFile (this, "5 MI.wav");
MI.play();
MI.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));
}

if(mouseX > 115 && mouseX < 195 && mouseY > 98 && mouseY < 128){
FA = new SoundFile (this, "6 FA.wav");
FA.play();
FA.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));
}

if(mouseX > 280 && mouseX < 370 && mouseY > 65 && mouseY < 95){
LA = new SoundFile (this, "10 LA.wav");
LA.play();
LA.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));

}

if(mouseX > 135 && mouseX < 225 && mouseY > 65 && mouseY < 95){
SOL = new SoundFile (this, "8 SOL.wav");
SOL.play();
SOL.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));

}

if(mouseX > 220 && mouseX < 310 && mouseY > 35 && mouseY < 55){
SI = new SoundFile (this, "12 SI.wav");
SI.play();
SI.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));
}

if(mouseX > 240 && mouseX < 330 && mouseY > 10 && mouseY < 30){
DO2 = new SoundFile (this, "13 DO2.wav");
DO2.play();
DO2.amp(2);

 float sz = random(2,6);
    particles.add(new Particle(mouseX,mouseY,sz));
}



}
