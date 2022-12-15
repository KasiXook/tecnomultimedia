// PROBLEMAS
// dificultad  
// reiniciar

class Juego {


  Manzana manzana;
  Granjero granjero;
  Obstaculo [] obstaculos;
  Obstaculo [] obstaculos1;
  Obstaculo [] obstaculos2;

  int nivel;
  int cantObstaculos;
  int cantManzana;
  int puntaje;

  PImage fondoNivel1;
  PImage fondoNivel2;
  PImage fondoNivel3;
  PImage imgPerdiste;
  PImage imgGanaste;

  boolean gameWinner;
  boolean gameOver;



  Juego(int _Nivel) {

    inicializar(_Nivel);
  }

  void inicializar(int _Nivel) {
    manzana = new Manzana();
    granjero = new Granjero (4, 4);

    obstaculos = new Obstaculo[10];
    for (int i = 0; i < obstaculos.length; i++) {
      obstaculos[i] = new Obstaculo(30, 30, (int)random(0, 20), (int)random(0, 20), granjero);
    }

    obstaculos1 = new Obstaculo[5];
    for (int i = 0; i < obstaculos1.length; i++) {
      obstaculos[i] = new Obstaculo (30, 30, (int)random(0, 20), (int)random(0, 20), granjero);
    }

    obstaculos2 = new Obstaculo[20];
    for (int i = 0; i < obstaculos2.length; i++) {
      obstaculos2[i] = new Obstaculo(30, 30, (int)random(0, 20), (int)random(0, 20), granjero);
    }


    nivel = _Nivel;


    imgPerdiste = loadImage("imgPerdisteObstaculo.jpg");
    imgGanaste = loadImage ("imgGanaste.jpg");

    gameWinner = false;
    gameOver = false;
  }


  void dibujar() {
    frameRate(10);
    if (nivel == 1) nivel(loadImage("imgNivel1.png"));
    if (nivel == 2) nivel(loadImage("imgNivel2.jpg"));
    if (nivel == 3) nivel(loadImage("imgNivel3.jpg"));
  }

  void nivel(PImage fondoNivel) {
    image(fondoNivel, 0, 0, width, height);
    dibujarTablero();
    manzana.dibujar();
    granjero.dibujar();
    interfaz();
    dibujarObstaculo();
    //    analizarObstaculos();
    mover();
    gana();
  }

  //  void analizarObstaculos() {
  //    for (int i = 0; i < obstaculos.length; i++) {
  //      if (obstaculos[i].posX == granjero.posX + 1 && obstaculos[i].posY == granjero.posY + 1 || granjero.posX == obstaculos[i].posX && granjero.posY == obstaculos[i].posY || obstaculos[i].posX == granjero.posX && obstaculos[i].posY == granjero.posY + 1 || obstaculos[i].posX == granjero.posX + 1 && obstaculos[i].posY == granjero.posY);
  //      {
  //        gameOver = true;
  //      }
  //    }
  //
  //    if (gameOver == true);
  //    {
  //      pierde();
  //    }
  //  }




  void dibujarTablero() {
    for (int i = 0; i < 30; i++) {
      line(0, i*30, width, i* 30);
    }
    for (int j = 0; j < 30; j++) {
      line (j*30, 0, j*30, height);
    }
  }

  void mover() {
    granjero.moverGranjero();
  }

  void elJuego() {
    agarrarManzana();
    granjero.direccion();
    pasaNivel1();
    pasaNivel2();
  }

  void agarrarManzana() {                                                                                                                                                                                              
    if (manzana.posX == granjero.posX + 1 && manzana.posY == granjero.posY + 1 || granjero.posX == manzana.posX && granjero.posY == manzana.posY || manzana.posX == granjero.posX && manzana.posY == granjero.posY + 1 || manzana.posX == granjero.posX + 1 && manzana.posY == granjero.posY) {
      manzana.posX = (int)random(0, 20);
      manzana.posY = (int)random(0, 20);
      puntaje++;
    }
  }



  void pasaNivel1() {
    if (puntaje >= 5) {
      nivel = 2;
    }
  }

  void pasaNivel2() {
    if (puntaje >= 10) {
      nivel = 3;
    }
  }

  void interfaz() {
    text("puntuacion:" + " " + puntaje, 300, 50);
    text("nivel" + " " + nivel, 500, 50);
  }



  void dibujarObstaculo() {
    for (int i=0; i< obstaculos.length; i++) {
      obstaculos[i].dibujar();
    }
  }



  void pierde() {
    image(imgPerdiste, 0, 0, width, height);
    text("PERDISTE, NOOOO", 100, 100, 600, 200);
    text("volver a empezar", 600, 800);
    granjero.moverGranjero = false;
  }

  void gana() {
    if (puntaje == 15) {
      gameWinner = true;
      if (gameWinner == true) {
        image(imgGanaste, 0, 0, width, height);
        text("click para reiniciar", 600, 800);
      }
    }
  }

  void reset() {
    image(fondoNivel1, 0, 0, width, height);
    dibujarTablero();
    manzana.dibujar();
    granjero.dibujar();
    dibujarObstaculo();
    interfaz();
  }
}
