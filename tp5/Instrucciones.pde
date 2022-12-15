class Instrucciones {
  PImage fondoInstrucciones;
  String instrucciones;
  PFont fuente;


  Instrucciones() {
    fondoInstrucciones = loadImage("imgInstrucciones.jpg");
    instrucciones = ("Mueve al granjero con la teclas W-S-A-D para conseguir todas las manzanas");
    fuente = createFont("minecraft_font.ttf", 16);
  }

  void dibujar() {
    image(fondoInstrucciones, 0, 0, width, height);


    text(instrucciones, 100, 200, 500, 400);
  }
}
