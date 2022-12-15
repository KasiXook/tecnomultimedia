


class Granjero {
  String numGranjero;
  int posX;
  int posY;
  int tamC;

  PImage imgGranjero;

  boolean moverGranjero;
  boolean moverArriba = false;
  boolean moverAbajo = false;
  boolean moverDerecha = false;
  boolean moverIzquierda = false;

  Granjero( int _granjeroX, int _granjeroY) {
    posX = _granjeroX;
    posY = _granjeroY;
    tamC = 30;



    imgGranjero = loadImage("granjero.png");

    moverGranjero = true;
  }

  void dibujar() {
    image(imgGranjero, posX * tamC, posY * tamC, 60, 60);
    println("posXgranjero" + posX + "posYgranjero" + posY);
  }

  void moverGranjero() {
    if (moverGranjero == true) {
      if (keyCode == 'a' || keyCode == 'A') {

        moverIzquierda = true;
      } else {
        moverIzquierda = false;
      }
      if (keyCode == 'd' || keyCode == 'D') {
        moverDerecha = true;
      } else {
        moverDerecha = false;
      }
      if (keyCode == 'w' || keyCode == 'W') {
        moverArriba = true;
      } else {
        moverArriba = false;
      }
      if (keyCode == 's' || keyCode == 'S') {
        moverAbajo = true;
      } else {
        moverAbajo = false;
      }
    }
  } 


  void direccion() {
    if (moverGranjero == true) {
      if (moverArriba == true) {
        posY--;
      } else if (moverAbajo == true) {
        posY++;
      } else if (moverDerecha == true) {
        posX++;
      } else if (moverIzquierda == true) {
        posX--;
      }
    }
  }


  // void fueraDelArea(){
  // if(posX * tamC > 
  // }
}
