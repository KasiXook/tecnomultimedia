class Manzana{
  PImage imgManzana;
  int posX;
  int posY;
  int alto;
  int ancho;
  
  
  
  Manzana(int _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    alto = _ancho;
    ancho = _alto;
    imgManzana = loadImage("Manzana.png");
  }
  
  void dibujar(){
   image(imgManzana, 0,0, 30, 30);
   
  }
  
}
