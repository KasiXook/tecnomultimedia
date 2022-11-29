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
    
    if(pantalla == 0){
    inicio.dibujar();
    
    }else if(pantalla == 1){
      instrucciones.dibujar();
    }else if (pantalla == 2){
     juego.dibujar();
    }else if (pantalla == 3){
      creditos.dibujar();
    }else if (pantalla == 4){
      
    }
    
   // tablero.dibujar();
   // manzana.dibujar();
   // granjero.dibujar();
    
  }
   
 void mousePresionado(){
   if(mouseX > 0 && mouseX < 900 && mouseY > 0 && mouseY < 900 && (pantalla == 1)){
   pantalla = 2;
   }
   if(mouseX > 425 && mouseX < 585 && mouseY > 785 && mouseY < 860 && (pantalla == 0)){
    pantalla = 1;
   }else if (mouseX > 665 && mouseX < 825 && mouseY > 785 && mouseY < 860 && (pantalla == 0)){
    pantalla = 3;
   }
   
   if(juego.gameWinner == true || juego.gameOver == true){
     inicio.dibujar();
     juego.puntaje = 0;
     juego.nivel = 1;
   }
   
  
   

   
 }
 
 void mover(){
   juego.mover();
 }
 
 void elJuego(){
  juego.elJuego(); 
 }
 
 
 

   
 
 
}
  
 
  
  
  
  
