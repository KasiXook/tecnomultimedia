class Boton{
 PFont fuente;
 String texto;
 int x;

 
 Boton(String texto, int x){
   fuente = createFont("minecraft_font.ttf", 16);
   this.texto = texto;
   this.x = x;
 }
 
 
 void dibujar(){
  // rect(425,785,160, 65);
  // rect(665,785,160,65);
   textFont(fuente);
   if(this.texto.equals("Jugar")){
   text("Jugar", 475, 800, 250, 250);
   }else if(this.texto.equals("Creditos")){
   text("Creditos", 700, 800, 200, 200);
   }
   
 }
}
