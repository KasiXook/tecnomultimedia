class Boton{
 PFont fuente;
 String texto;
 int x;

 
 Boton(String texto){
   fuente = createFont("minecraft_font.ttf", 16);
   this.texto = texto;
   
 }
 
 
 void dibujar(){
  // rect(285, 520, 110, 45);
  // rect(665,785,160,65);
   textFont(fuente);
   fill(50);
   if(this.texto.equals("Jugar")){
     rect(285, 520, 110, 45);
     fill(255);
   text("Jugar", 310, 530, 250, 250);
   
   }else if(this.texto.equals("Creditos")){
     rect(445, 520, 110, 45);
     fill(255);
   text("Creditos", 460, 530, 200, 200);
   } else if(this.texto.equals("Instrucciones")){
     rect(0, 0, 160, 45);
     fill(255);
     text("Instrucciones", 10, 10, 200, 200);
   }
   
 }
}
