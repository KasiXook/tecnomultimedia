class Obstaculo {

  Granjero miGranjero;
  Juego miJuego;

  PImage imgPerdiste;
  PImage imgObstaculo;
  boolean gameOver = false;


  int posX;
  int posY;
  int alto;
  int ancho;





  Obstaculo(  int _ancho, int _alto, int _posX, int _posY, Granjero _miGranjero  ) {
    posX = _posX;
    posY = _posY;
    alto = _ancho;
    ancho = _alto;
    imgObstaculo = loadImage("rama.png");
    imgPerdiste = loadImage("imgPerdisteObstaculo.jpg");




    miGranjero = _miGranjero;
  }

  void dibujar() {
    image(imgObstaculo, posX * 30, posY * 30, 30, 30);
    colision();
  }






  void pierdeColision() {
    image(imgPerdiste, 0, 0, width, height);
    text("PERDISTE, NOOOO", 100, 100, 600, 200);
    text("volver a empezar", 600, 800);
    miGranjero.moverGranjero = false;
    gameOver = true;
  }



  void colision() {
    if (posX == miGranjero.posX + 1 && posY == miGranjero.posY + 1 || miGranjero.posX == posX && miGranjero.posY == posY || posX == miGranjero.posX && posY == miGranjero.posY + 1 || posX == miGranjero.posX + 1 && posY == miGranjero.posY) {
      image(imgPerdiste, 0, 0, width, height);
      text("PERDISTE, NOOOO", 100, 100, 600, 200);
      text("volver a empezar", 600, 800);
      miGranjero.moverGranjero = false;
    }
  }
}
