class Todopoderoso {
  Tablero tablero;
  Manzana manzana;
  Granjero granjero;
  pantalla pantalla;
  
  Todopoderoso() {
    tablero = new Tablero();
    manzana = new Manzana(0,0,50,50);
    granjero = new Granjero (0, 40, 30, 60);
    pantalla = new pantalla ();


  
  }
    

  
  void dibujar() {
    
    manzana.dibujar();
    granjero.dibujar();
    pantalla.dibujar();
    CambiarPantalla();
  }
  
  void CambiarPantalla(){
    if(keyPressed){
    if(key == 'p' || key == 'P'){
    pantalla.cambiarPantalla(1);
    pantalla.dibujar();
    tablero.dibujar();
  }
    }
  
  }
 
  
  
  
  
}
