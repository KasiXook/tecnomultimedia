

class todopoderoso{

Mesa Mesa;
Utiles lapicera;
Utiles Rubik;
Utiles libroVerde;
Utiles libroRojo;
Utiles libroMarron;
Utiles masUtiles;
Utiles Billetera;
Utiles LibroAbierto;

  
todopoderoso(){

   Mesa = new Mesa(0, 0, width, height);

}

void dibujar(){
  Mesa.dibujar();
  lapicera.dibujar();
  Rubik.dibujar();
  libroVerde.dibujar();
  libroRojo.dibujar();
  libroMarron.dibujar();
  masUtiles.dibujar();
  Billetera.dibujar();
  LibroAbierto.dibujar();
  

}

void crearUtiles(){
  int posXlapicera = 440;
  int posYlapicera = 40;
  int anchoLapicera = 50;
  int altoLapicera = 50;
  
  int posXrubik = 500;
  int posYrubik = 40;
  int anchoRubik = 50;
  int altoRubik = 50;
  
  int posXlibroV = 560;
  int posYlibroV = 40;
  int anchoLibroV = 50;
  int altoLibroV = 50;
  
  int posXlibroR = 440;
  int posYlibroR = 100;
  int anchoLibroR = 50;
  int altoLibroR = 50;
  
  int posXlibroM = 400;
  int posYlibroM = 270;
  int anchoLibroM = 150;
  int altoLibroM = 150;
  
  int posXmasUtiles = 130;
  int posYmasUtiles = 270;
  int anchoMasUtiles = 100;
  int altoMasUtiles = 100;
  
  int posXbilletera = 530;
  int posYbilletera = 500;
  int anchoBilletera = 50;
  int altoBilletera = 50;
  
  int posXlibroAbierto = 560;
  int posYlibroAbierto = 100;
  int anchoLibroAbierto = 50;
  int altoLibroAbierto = 50;
  
  
   
  lapicera = new Utiles (posXlapicera, posYlapicera, anchoLapicera, altoLapicera, "lapicera");
  Rubik = new Utiles (posXrubik, posYrubik, anchoRubik, altoRubik, "Rubik");
  libroVerde = new Utiles (posXlibroV, posYlibroV, anchoLibroV, altoLibroV, "libroVerde");
  libroRojo = new Utiles (posXlibroR, posYlibroR, anchoLibroR, altoLibroR, "libroRojo");
  libroMarron = new Utiles (posXlibroM, posYlibroM, anchoLibroM, altoLibroM, "libroMarron");
  masUtiles = new Utiles (posXmasUtiles, posYmasUtiles, anchoMasUtiles, altoMasUtiles, "Utiles");
  Billetera = new Utiles (posXbilletera, posYbilletera, anchoBilletera, altoBilletera, "Billetera");
  LibroAbierto = new Utiles (posXlibroAbierto, posYlibroAbierto, anchoLibroAbierto, altoLibroAbierto, "LibroAbierto");
    
}

void ubicarLapicera(){
  lapicera.ubicarLapicera();
  
}
void ubicarRubik(){
  Rubik.ubicarRubik();
}

void ubicarLibroVerde(){
  libroVerde.ubicarlibroVerde();
}
void ubicarLibroRojo(){
  libroRojo.ubicarlibroRojo();
}
  
void ubicarLibroAbierto(){
 LibroAbierto.ubicarlibroAbierto();
  
}

void ubicarUtiles(){
  if(mouseX>=440 && mouseX<490 && mouseY>= 40 && mouseY<=90){
todopoderoso.ubicarLapicera();
  }
  if (mouseX>=500 && mouseX<=550 && mouseY>= 40 && mouseY<=90){
todopoderoso.ubicarRubik();
  }
  if (mouseX>=560 && mouseX<=610 && mouseY>= 40 && mouseY<=90){
todopoderoso.ubicarLibroVerde();
  }
  if (mouseX>=440 && mouseX<=490 && mouseY>= 100 && mouseY<=150){
todopoderoso.ubicarLibroRojo();
  }
  if(mouseX>=560 && mouseX<=610 && mouseY>= 100 && mouseY<=150){
todopoderoso.ubicarLibroAbierto();
  } 
 }
}
