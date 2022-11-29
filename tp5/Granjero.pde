


class Granjero {
  String numGranjero;
  int posX;
  int posY;
  int tamC;
  
  PImage imgGranjero;

boolean moverGranjero;

  Granjero( int _granjeroX, int _granjeroY) {
    posX = _granjeroX;
    posY = _granjeroY;
    tamC = 30;
    
    
    
    imgGranjero = loadImage("granjero.png");
    
    moverGranjero = true;
  }

  void dibujar() {
    image(imgGranjero, posX * tamC, posY * tamC, 60, 60);
    println("posXgranjero" + posX + "posYgranjero" + posY);
  }
  
  void moverGranjero(){
    if(moverGranjero == true){
    if (keyCode == 'a' || keyCode == 'A'){
      posX = posX - 1;
    }
    if (keyCode == 'd' || keyCode == 'D'){
      posX = posX + 1;
    }
    if (keyCode == 'w' || keyCode == 'W'){
      posY = posY - 1;
    }
    if (keyCode == 's' || keyCode == 'S'){
      posY = posY + 1;
    }
      
    }
    }
    
    
  }
