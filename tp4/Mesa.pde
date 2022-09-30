class Mesa{
  
int posX, posY, ancho, alto;
PImage imgMesa;
 

 
Mesa(int _posX, int _posY, int _ancho, int _alto){
  posX = _posX;
  posY = _posY;
  ancho = _ancho;
  alto = _alto;
  
  imgMesa = loadImage ("imgMesa.png");
 }

void dibujar(){
 
image (imgMesa, posX, posY, ancho, alto);

 }
}
