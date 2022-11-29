//PROBLEMAS:




class Manzana{
  PImage imgManzana;
  int posX;
  int posY;
  int alto;
  int ancho;
  
  
  
  
  Manzana(  int _ancho, int _alto) {
    posX = (int)random(0 , 30);
    posY = (int)random(0, 30);
    alto = _ancho;
    ancho = _alto;
    imgManzana = loadImage("Manzana.png");
  }
  
  void dibujar(){
   image(imgManzana, posX * 30, posY * 30, 30, 30);
   println("posXmanzana" + posX + "posYmanzana" + posY);
   
  }
  
  
}
