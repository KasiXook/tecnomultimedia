class Tablero{
  PImage imgTablero;
  
  Tablero(){
    imgTablero = loadImage("InicioJuego.jpg");
    
    
  }
   
   void dibujar(){
     image(imgTablero, 0, 0, width, height);
     
   }
}
