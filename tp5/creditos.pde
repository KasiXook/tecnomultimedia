class Creditos {
  PImage fondoCreditos;
  PFont fuente;
  String texto;

  Creditos() {
    fondoCreditos = loadImage("fondoCreditos.jpg");
    fuente = createFont("minecraft_font.ttf", 16);
    
    texto = "       Kiara Belen Almeyra \n       Tecno Multimedia \n       Legajo: 49578/0";
  }

  void dibujar() {
    image(fondoCreditos,0,0, width, height);
    text(texto, 100, 100, 800, 800);  }
}
