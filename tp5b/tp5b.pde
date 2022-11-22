Todopoderoso todopoderoso;

void setup(){
  size(900,900);
  
  todopoderoso = new Todopoderoso();
}

void draw(){
  todopoderoso.dibujar();
  todopoderoso.moverManzana();
  
}

void mouseClicked(){
   todopoderoso.mousePresionado(); 
  }
  
 void  keyPressed (){
   todopoderoso.mover();
 }
