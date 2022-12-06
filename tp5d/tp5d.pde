


Todopoderoso todopoderoso;

void setup(){
  size(600,600);
  
  todopoderoso = new Todopoderoso();
}

void draw(){
  todopoderoso.dibujar();
  todopoderoso.elJuego();
  
}

void mouseClicked(){
   todopoderoso.mousePresionado(); 
  }
  
 void  keyPressed (){
   todopoderoso.mover();
 }
