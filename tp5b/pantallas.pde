class pantalla{
  int pantalla = 0;
  PImage imgInicio;
  PImage imgTable;
  
  
  pantalla(){
    imgInicio = loadImage("InicioJuego.jpg");
    imgTable = loadImage("imgTablero.png");
  }
  void cambiarPantalla(int num){
    pantalla= num;
    
    
  }
  
  
  
    
  
  void dibujar(){
    if (pantalla == 0){
      image(imgInicio, 0,0, width, height);
    //  text
    if (pantalla == 1){
      image(imgTable, 0,0, width, height);
    }
    }
  }
  
  
  
}
