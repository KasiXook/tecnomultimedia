 
 
 //   VIDEO    https://youtu.be/XQLNjNs9_-o
 
 
int filas = 30;
int columnas = 30;
int tamC = 30;
int tamGranjero = 2;

boolean GameOver = false;
boolean GameWinner = false;
boolean Inicio = true;

int manzanaX;
int manzanaY;
int gPosX;
int gPosY;
int contador = 0;


PFont MinecraftFont;
String texto;
String texto2;

PImage[]imagenes = new PImage[4];

int dir = 2;


  
void setup (){
  size(900, 900);
  manzanaX = (int)random(1, columnas);
  manzanaY = (int)random(0, filas);
  gPosX = tamC * 12;
  gPosY = tamC * 12;
  frameRate(5);
   imagenes[0]= loadImage("InicioJuego.jpg");
  image(imagenes[0], 0, 0, width, height);
  GameOver = false;
  contador = 0;
  
}
  
  
void draw (){
   
  background(20,200,50);
  
  if(GameOver == true){
   
   }else if (GameOver == false){
    stroke(50);
    for(int i = 0; i < filas; i++){
      line(0, i*tamC, width, i* tamC);
    }
    for(int j = 0; j < columnas; j++){
      line (j*tamC, 0, j*tamC, height);
    }     
  }
  text("Puntuacion: " + contador, 600, 850);
  

InicioJuego();
Gana();
SiPierde();
AgarrarManzana();


}


  







  
