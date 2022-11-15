class Todopoderoso {
  Tablero tablero;
  Manzana manzana;
  
  Todopoderoso() {
    tablero = new Tablero();
    manzana = new Manzana(0,0,50,50);
  }
  
  void dibujar() {
    tablero.dibujar();
    manzana.dibujar();
  }
}
