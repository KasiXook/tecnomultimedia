class Juego{
   // TERMINAR CREDITOS
   // DETERMINAR CUANDO PIERDE Y CUANDO GANA
   // SONIDO INICIO
   // SONIDO POR NIVELES
   // SONIDO SI GANA
   // SONIDO SI PIERDE
   // BOTONES
   // BOTON DE REINCIO
   // 
  
  Manzana manzana;
  Granjero granjero;
  Obstaculo [] obstaculos;
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
    granjero = new Granjero (4, 10);
    
    obstaculos = new Obstaculo[20];
    for (int i = 0 ; i < obstaculos.length; i++){
      obstaculos[i] = new Obstaculo(30, 30, (int)random(0, 30), (int)random(0, 30), granjero);
    }
      
    obstaculos2 = new Obstaculo[40];
    for (int i = 0; i < obstaculos2.length; i++){
      obstaculos2[i] = new Obstaculo(30, 30, (int)random(0, 30), (int)random(0, 30), granjero);
      
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
    
  }
  
  void nivel2(){
    image(fondoNivel2, 0, 0, width, height);
    dibujarTablero();
    manzana.dibujar();
    granjero.dibujar();
    interfaz();
    dibujarObstaculo();
     
    
    
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
    pasaNivel1();
    pasaNivel2();
     Gana(); 
  }
  
  void agarrarManzana(){
 //   float dist;
  //  dist = dist(float (manzana.posX) , float(manzana.posY) , float(granjero.posX) , float(granjero.posY));
  //  println("distancia"  + "." + dist);                                                                                                                                                                                                                                                     
    if(manzana.posX == granjero.posX + 1 && manzana.posY == granjero.posY + 1 || granjero.posX == manzana.posX && granjero.posY == manzana.posY || manzana.posX == granjero.posX && manzana.posY == granjero.posY + 1 || manzana.posX == granjero.posX + 1 && manzana.posY == granjero.posY){
      manzana.posX = (int)random(0, 30);
     manzana.posY = (int)random(0, 30);
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
     text("puntuacion:" + " " + puntaje, 600, 50);
     text("nivel" + " " + nivel, 800, 50);
    }
    
  
  
  void dibujarObstaculo() {
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
    text("HAS PERDIDO, NOPUEDESER", 600, 700);
    
    
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



}
