// PROBLEMA: no sabria como hacer que cuando el granjero este en la posicion de la manzana, 
 // la manzana se reubique, mi idea es con un dist, pero no sabria como pasar las variables de las clases a juego para hacer el metodo 

class Juego{
  
  Tablero tablero;
  Manzana manzana;
  Granjero granjero;
  Niveles nivel;
  Puntaje puntaje;
  
  Juego(){
    tablero = new Tablero(30, 30, 30);
    manzana = new Manzana(50,50);
    granjero = new Granjero (4, 10);
    nivel = new Niveles();
    puntaje = new Puntaje(400, 400);
  
  }
  
  
  void dibujar(){
   // frameRate(1);
    nivel.dibujar();
   tablero.dibujar();
   granjero.dibujar();
   manzana.dibujar();
   puntaje.dibujar();
 
   
  }
  
  void mover(){
    granjero.moverGranjero();
  }
  
  void agarrarManzana(){
    float dist;
    dist = dist(float (manzana.posX) , float(manzana.posY) , float(granjero.posX) , float(granjero.posY));
    println("distancia"  + "." + dist);                                                                                                                                                                                        // esta parte del codigo no me funciona como quiero csm                                                              
    if(manzana.posX == granjero.posX + 1 && manzana.posY == granjero.posY + 1 || granjero.posX == manzana.posX && granjero.posY == manzana.posY || granjero.posX == manzana.posX - 1 && granjero.posY == granjero.posY || (granjero.posX == manzana.posX && granjero.posY == manzana.posY - 1 )){
      manzana.posX = (int)random(0, 30);
     manzana.posY = (int)random(0, 30);
     puntaje.puntos++;
    }
    
  }
  
    void pasarNivel(){
    // if(puntaje.puntos 
    }
  
}
