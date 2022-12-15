class Todopoderoso {
  Inicio inicio;
  Juego juego;
  Creditos creditos;
  Instrucciones instrucciones;

  int pantalla;

  Todopoderoso() {
    inicio = new Inicio();
    juego = new Juego(1);
    creditos = new Creditos();
    instrucciones = new Instrucciones();
    pantalla = 0;
  }



  void dibujar() {

    if (pantalla == 0) {
      inicio.dibujar();
    } else if (pantalla == 1) {
      instrucciones.dibujar();
    } else if (pantalla == 2) {
      juego.dibujar();
    } else if (pantalla == 3) {
      creditos.dibujar();
    }
  }

  void mousePresionado() {

    if (mouseX > 0 && mouseX < 600 && mouseY > 0 && mouseY < 600) {
      pantalla = 0;
    } 
    if (mouseX > 285 && mouseX < 395 && mouseY > 520 && mouseY < 565 && (pantalla == 0)) {  // boton juego a instrucciones CAMBIAR
      pantalla = 2;
    } else if (mouseX > 445 && mouseX < 555 && mouseY > 520 && mouseY < 565 && (pantalla == 0)) {  // boton creditos 
      pantalla = 3;
    } else if (mouseX > 0 && mouseX < 160 && mouseY > 0 && mouseY <45 && (pantalla == 0)) {     
      pantalla = 1;
    }
  }

  void mover() {
    juego.mover();
  }

  void elJuego() {
    juego.elJuego();
  }
}
