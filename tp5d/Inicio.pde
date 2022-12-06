class Inicio{
 PImage imgInicio;
 Boton botonJugar, botonCreditos, botonInstrucciones;
 
 Inicio(){
  imgInicio = loadImage("imgInicio.jpg"); 
  botonJugar = new Boton("Jugar");
  botonCreditos = new Boton("Creditos");
  botonInstrucciones = new Boton("Instrucciones");
 }
 
 
 void dibujar(){
  image(imgInicio,0,0, width, height); 
  botonJugar.dibujar();
  botonCreditos.dibujar();
  botonInstrucciones.dibujar();
  
  
 }
}
