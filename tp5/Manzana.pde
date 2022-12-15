//PROBLEMAS:




class Manzana {
  PImage imgManzana;
  int posX;
  int posY;




  Manzana() {
    posX = (int)random(0, 20);
    posY = (int)random(0, 20);

    imgManzana = loadImage("Manzana.png");
  }

  void dibujar() {
    image(imgManzana, posX * 30, posY * 30, 30, 30);
    println("posXmanzana" + posX + "posYmanzana" + posY);
  }
}
