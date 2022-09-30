
// 1. VIDEO https://youtu.be/AN1aQtd94zM

todopoderoso todopoderoso;

void setup(){
  size(800,800);
  background(0);
 
  todopoderoso = new todopoderoso();
  todopoderoso.crearUtiles();
 
}

void draw(){
 todopoderoso.dibujar();
}

void mousePressed() {
todopoderoso.ubicarUtiles();}
