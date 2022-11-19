class Tablero{
  PImage imgTablero;
  int tamC;
  int filas;
  int columnas;
  
  Tablero(){
    //imgTablero = loadImage("imgTablero.png");
    tamC = 30;
    filas = 30;
    columnas = 30;
    
  }
   
   void dibujar(){
    // image(imgTablero, 0, 0, width, height);
     
     for(int i = 0; i < filas; i++){
      line(0, i*tamC, width, i* tamC);
    }
    for(int j = 0; j < columnas; j++){
      line (j*tamC, 0, j*tamC, height);
      
    }     
    
   }
}
