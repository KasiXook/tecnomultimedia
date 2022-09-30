class Utiles{
  
  String NomUtiles;
  int posX, posY, ancho, alto;
  PImage ImgUtiles;


Utiles(int _posX, int _posY, int _ancho, int _alto, String NomUtiles){
  posX=_posX;
  posY=_posY;
  ancho=_ancho;
  alto=_alto;
  
  ImgUtiles = loadImage( NomUtiles +".png");
 
 }
 
void dibujar(){
  image(ImgUtiles, posX, posY, ancho, alto);

 }
 
void ubicarlibroVerde(){
  posX = 400;
  posY = 300;
  ancho = 150;
  alto = 150;

 }

void ubicarlibroRojo(){
  posX = 100;
  posY = 400;
  ancho = 150;
  alto = 150;

 }
void ubicarRubik(){
  posX = 250;
  posY = 320;
  ancho = 50;
  alto = 50;

 }

void ubicarLapicera(){
  posX = 100;
  posY = 500;
  ancho = 50;
  alto = 50;

 }
 
 void ubicarlibroAbierto(){
  posX = 270;
  posY = 420;
  ancho = 200;
  alto = 150;
 }
 
}
