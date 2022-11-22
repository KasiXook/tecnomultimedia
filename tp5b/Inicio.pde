class Inicio{
 PImage imgInicio;
 Boton botonJugar, botonCreditos;
 
 Inicio(){
  imgInicio = loadImage("imgInicio.jpg"); 
  botonJugar = new Boton("Jugar", 300);
  botonCreditos = new Boton("Creditos", 500);
  
 }
 
 
 void dibujar(){
  image(imgInicio,0,0, width, height); 
  botonJugar.dibujar();
  botonCreditos.dibujar();
  
  
 }
}
