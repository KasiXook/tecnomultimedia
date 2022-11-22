class Puntaje{
String texto;
int puntos;
int posX;
int posY;

  Puntaje(int _posX, int _posY){
   puntos = 0;
   texto = "Puntuacion";
   posX = _posX;
   posY = _posY;

  }
  void dibujar(){
     text("puntuacion:" + puntos, 300, 400);
  }
  void puntos(){
   puntos = 0; 
  }
}
