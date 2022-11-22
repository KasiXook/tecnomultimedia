import processing.sound.*;
SoundFile sonido;

class Niveles{
 
 PImage fondoNivel1;
 PImage fondoNivel2;
 int numNivel;
 //sonido = new SoundFile(this, "data/sonidoInicio.wav");
 
 
 Niveles(){
  fondoNivel1 = loadImage("imgNivel1.png");
  fondoNivel2 = loadImage("imgNivel2.png");
  numNivel = 1;
  
 }
 
 void dibujar(){
   image(fondoNivel1, 0, 0, width, height);
   texto();
 }
 
 
 void texto(){
   fill(0);
   rect(22 * 30, 0, 6 * 30, 2 * 30);
   fill(255);
   text("nivel" + " " + numNivel ,23 * 30, 1 * 30);
   
   
 }
 void nivel2(){
   image(fondoNivel2, 0, 0, width, height);
   
   
 }
}
