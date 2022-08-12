void DibujarManzana (){
  imagenes[2]= loadImage("Manzana.png");
  image( imagenes[2], manzanaX * tamC, manzanaY * tamC, tamC, tamC);
 
}

void DibujarGranjero (){
  imagenes[3] = loadImage("GranjeroManzanas.png");
  image(imagenes[3], gPosX, gPosY, tamC * tamGranjero, tamC * tamGranjero);
  
}


 void MovimientoGranjero(int dir){
if(dir==1)
  gPosY = gPosY - tamC;
if(dir==2)
  gPosY = gPosY + tamC;
if(dir==3)
  gPosX = gPosX - tamC;
if(dir==4)
  gPosX = gPosX + tamC;
  
} 
 
 void keyPressed(){
  if(key== 'w' || keyCode == UP) dir = 1;
  if(key== 's' || keyCode == DOWN) dir = 2;
  if(key== 'a' || keyCode == LEFT) dir = 3;
  if(key== 'd' || keyCode == RIGHT) dir = 4;
  println( "granjero " + gPosX + " " + gPosY);
  println( " manzana " + manzanaX + " " + manzanaY);
  int grillaXGranjero = floor(map(gPosX, 0, width, 0, 30));
  int grillaYGranjero = floor(map(gPosY, 0, height, 0, 30));
  println("GranjeroX: " + grillaXGranjero," GranjeroY: " + grillaYGranjero);

}


void mouseClicked(){
  if(GameWinner == true || GameOver == true){
  manzanaX = (int)random(0, columnas);
  manzanaY = (int)random(0, filas);
  gPosX = tamC * 12;
  gPosY = tamC * 12;
  frameRate(5);
   imagenes[0]= loadImage("InicioJuego.jpg");
  image(imagenes[0], 0, 0, width, height);
  GameOver = false;
  GameWinner = false;
  contador = 0;
  dir = 2;
  }
  
}

void Texto (){
  fill(0);
  textSize(30);
  textAlign(LEFT);
  MinecraftFont = createFont("minecraft_font.ttf",30);
  textFont(MinecraftFont);
  texto = "Consigue recolectar 5 manzanas";
  text(texto, 120, tamC * 2);
  texto2 = "usa las flechas o las teclas W-A-S-D para moverte";
  textSize(25);
  text(texto2, 40, tamC * 3);
  
} 

void InicioJuego(){
   if(Inicio==true){
    DibujarManzana();
    DibujarGranjero();
    MovimientoGranjero(dir);
    keyPressed();
    Texto();
    
 }
}

void Gana(){
    if(contador == 5){
      GameWinner = true;
   
    if(GameWinner == true){
      gPosX = width/2;
      gPosY = height/2;
      imagenes[1] = loadImage("GanasteImagen.jpg");
      image(imagenes[1], tamC, tamC, width - tamC * 2, height - tamC * 2);
      fill(255);
      textSize(25);
      text("Creditos \n" + "Kiara Belen Almeyra \n" + "Diseno Multimedial\n", 100, 320);
      fill(255);
      text("CLICK PARA REINICIAR", width/2, 800); 
    
  }
 } 
}

void SiPierde(){
   int grillaXGranjero = floor(map(gPosX, 0, width, 0, 30));
   int grillaYGranjero = floor(map(gPosY, 0, height, 0, 30));
   
  if(gPosX > width || gPosY > height || grillaXGranjero < -3 || grillaYGranjero < -3){
    GameOver = true;
     if(GameOver == true){
     dir = 5;
     gPosX = 1000;
     gPosY = 1000;
     imagenes[3] = loadImage("PerdisteImagen.jpg");
     image(imagenes[3], 0, 0, width, height);
     textSize(30);
     textAlign(CENTER);
     text("TE HAS PERDIDO, NOPUEDESER", width/2, 300);
     fill(255);
     text("CLICK PARA REINICIAR", width/2, 800);
    
  }
 }
}
 void AgarrarManzana(){
   int grillaXGranjero = floor(map(gPosX, 0, width, 0, 30));
   int grillaYGranjero = floor(map(gPosY, 0, height, 0, 30));
   if(grillaXGranjero == manzanaX - 1 && grillaYGranjero == manzanaY - 1){
    manzanaX = (int)random(0, tamC);
    manzanaY = (int)random(0, tamC);
    contador++;
   if(grillaXGranjero == manzanaX - 1 && grillaYGranjero == manzanaY - 1){
    manzanaX = (int)random(0, tamC);
    manzanaY = (int)random(0, tamC);
    contador++;
   }
  }
 }
 

    
