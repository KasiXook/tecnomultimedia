class Creditos {
  PImage fondoCreditos;
  PFont fuente;
  String texto;

  Creditos() {
    fondoCreditos = loadImage("FondoCreditos.jpeg");
    fuente = createFont("minecraft_font.ttf", 16);
    texto = "hola soy texto";
  }

  void dibujar() {
    image(fondoCreditos,0,0, width, height);
    text(texto, 100, 100, 60, 240);  }
}
