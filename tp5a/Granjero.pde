class granjero {
  String numGranjero;
  int posX;
  int posY;
  int ancho;
  int alto;
  PImage imgGranjero;


  granjero(int _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    alto = _ancho;
    ancho = _alto;
    imgGranjero = loadImage("granjero.png");
  }

  void dibujar() {
    image(imgGranjero, 0, 0);
  }
  
  void MoverGranjero(){
    
    
  }
}
