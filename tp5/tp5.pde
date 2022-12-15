import processing.sound.*;
SoundFile sonido;




Todopoderoso todopoderoso;

void setup() {
  size(600, 600);
  sonido = new SoundFile(this, "sonido1.wav");
  sonido.loop();

  todopoderoso = new Todopoderoso();
}

void draw() {
  todopoderoso.dibujar();
  todopoderoso.elJuego();
}

void mouseClicked() {
  todopoderoso.mousePresionado();
}

void  keyPressed () {
  todopoderoso.mover();
}
