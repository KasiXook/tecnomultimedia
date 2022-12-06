class Juego{
   // TERMINAR CREDITOS
   // DETERMINAR CUANDO PIERDE Y CUANDO GANA
   // SONIDO INICIO
   // SONIDO POR NIVELES
   // SONIDO SI GANA
   // SONIDO SI PIERDE
   // AGREGAR DIFICULTAD AL NIVEL 1 ta
  // HACER FUNCIONAR EL TEMA DEL REINICIO DEL JUEGO CUANDO PIERDEEEE, y seguro cuando gana tambien lptm
  
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
  
  Juego(int _Nivel){
   
    manzana = new Manzana(50,50);
    granjero = new Granjero (4, 4);
    
    obstaculos = new Obstaculo[10];
    for (int i = 0 ; i < obstaculos.length; i++){
      obstaculos[i] = new Obstaculo(30, 30, (int)random(0, 20), (int)random(0, 20), granjero);
    }
    
    obstaculos1 = new Obstaculo[5];
    for (int i = 0; i < obstaculos1.length; i++){
     obstaculos[i] = new Obstaculo (30, 30, (int)random(0, 20), (int)random(0, 20), granjero); 
    }
      
    obstaculos2 = new Obstaculo[20];
    for (int i = 0; i < obstaculos2.length; i++){
      obstaculos2[i] = new Obstaculo(30, 30, (int)random(0, 20), (int)random(0, 20), granjero);
      
    }
      
      
    nivel = _Nivel;
    fondoNivel1 = loadImage("imgNivel1.png");
    fondoNivel2 = loadImage("imgNivel2.jpg");
    fondoNivel3 = loadImage("imgNivel3.jpg");
    
    imgPerdiste = loadImage("imgPerdisteObstaculo.jpg");
    imgGanaste = loadImage ("imgGanaste.jpg");
    
    gameWinner = false;
    gameOver = false;
    
    
    
    
      
    
  
  }
  
  
  void dibujar(){
    frameRate(10);
    if (nivel == 1) nivel1();
    if (nivel == 2) nivel2();
    if (nivel == 3) nivel3();
 
  }
  
  void nivel1(){
    image(fondoNivel1, 0, 0, width, height);
    dibujarTablero();
    manzana.dibujar();
    granjero.dibujar();
     interfaz();
     dibujarObstaculo();
    
  }
  
  void nivel2(){
    image(fondoNivel2, 0, 0, width, height);
    dibujarTablero();
    
    manzana.dibujar();
    granjero.dibujar();
    interfaz();
    dibujarObstaculo1();
    
     
    
    
  }
  
  void nivel3(){
    image(fondoNivel3, 0, 0, width, height);
    dibujarTablero();
    manzana.dibujar();
    granjero.dibujar();
    interfaz();
    dibujarObstaculo2();
    
  }
  
  void dibujarTablero(){
   for(int i = 0; i < 30; i++){
      line(0, i*30, width, i* 30);
    }
    for(int j = 0; j < 30; j++){
      line (j*30, 0, j*30, height);
    }
  }
  
  void mover(){
    granjero.moverGranjero();
    
    
    
  }
  
  void elJuego(){
   agarrarManzana();
   granjero.direccion();
    pasaNivel1();
    pasaNivel2();
     Gana();

     Pierde();
  }
  
  void agarrarManzana(){
 //   float dist;
  //  dist = dist(float (manzana.posX) , float(manzana.posY) , float(granjero.posX) , float(granjero.posY));
  //  println("distancia"  + "." + dist);                                                                                                                                                                                                                                                     
    if(manzana.posX == granjero.posX + 1 && manzana.posY == granjero.posY + 1 || granjero.posX == manzana.posX && granjero.posY == manzana.posY || manzana.posX == granjero.posX && manzana.posY == granjero.posY + 1 || manzana.posX == granjero.posX + 1 && manzana.posY == granjero.posY){
      manzana.posX = (int)random(0, 20);
     manzana.posY = (int)random(0, 20);
     puntaje++;
    }
    
  }
  
 
  
    void pasaNivel1(){
     if(puntaje >= 5){
     nivel = 2; 
     
     
     }
    }
    
    void pasaNivel2(){
     if(puntaje >= 10){
      nivel = 3; 
     }
    }
    
    void interfaz(){
     text("puntuacion:" + " " + puntaje, 300, 50);
     text("nivel" + " " + nivel, 500, 50);
    }
    
  
  
  void dibujarObstaculo() {
    for (int i=0; i< obstaculos.length; i++) {
      obstaculos[i].dibujar();
      
    }
  }
  
  void dibujarObstaculo1(){
    for (int i=0; i< obstaculos.length; i++) {
      obstaculos[i].dibujar();
    }
    
  }
  
  void dibujarObstaculo2(){
   for (int i = 0; i < obstaculos2.length; i++){
     obstaculos2[i].dibujar();
  }
  }
  
  void Pierde(){
    if(gameOver == true){
    text("HAS PERDIDO, NOPUEDESER", 600, 700);
    
    
    }
  }
  
  void Gana(){
   if(puntaje == 15){
     gameWinner = true;
     if(gameWinner == true){
       image(imgGanaste, 0, 0, width, height);
       text("click para reiniciar", 600, 800);
     }
  }
}

void reset(){
    image(fondoNivel1, 0, 0, width, height);
    dibujarTablero();
    manzana.dibujar();
    granjero.dibujar();
    dibujarObstaculo();
    interfaz();
}

}
