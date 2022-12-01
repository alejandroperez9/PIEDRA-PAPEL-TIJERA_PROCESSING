/*
 ALEJANDRO PÉREZ ARANDA
 IES LAS FUENTEZUELAS
 PIEDRA, PAPEL O TIJERA
 
 USTED ES EL JUGADOR DE ABAJO, EL DE AZUL.
 */


int c;                                                  //VARIABLE "C" DE ORDENADOR.
int j;                                                  //VARIABLE "J" DE JUGADOR.

PImage piedra;
PImage papel;
PImage tijera;
PImage piedraj;
PImage papelj;
PImage tijeraj;


void setup() {
  size(405, 600);                                       //TAMAÑO DEL LIENZO.
  c = int(random(3));                                   //NUMERO ALEATORIO DE LA MÁQUINA.
  j = int(random(3));                                   //NUMERO DEL JUGADOR.

  textSize(30);                                         //TAMAÑO DEL TEXTO.
  background(255);                                      //COLOR DEL FONDO DEL LIENZO.

  piedra = loadImage("piedra.png");                     //CARGADO DE IMAGENES.
  piedraj = loadImage("piedraj.png");
  papel = loadImage("papel.png");
  papelj= loadImage("papelj.png");
  tijera = loadImage("tijera.png");
  tijeraj = loadImage("tijeraj.png");

  ordenador();
  jugador();
  reglas();
}


void ordenador() {                                       //CONDICIONALES PARA EL ORDENADOR, LLAMANDO A IMAGENES.
  if (c == 0) {
    image(piedra, 45, 15);                               //IMAGEN PIEDRA.
  } else {
    if (c == 1) {
      image(papel, 45, 15);                              //IMAGEN PAPEL.
    } else {
      if (c == 2) {
        image(tijera, 45, 15);                           //IMAGEN TIJERA.
      }
    }
  }
  println(c);                                            //DEVULVO EL RESULTADO DE C.
}


void jugador() {                                         //CONDICIONALES PARA EL JUGADOR, LLAMANDO A IMAGENES.
  if (j == 0) {
    image(piedraj, 45, 450);                             //IMAGEN PIEDRA DEL JUGADOR.
  } else {
    if (j == 1) {
      image(papelj, 45, 450);                            //IMAGEN PAPEL DEL JUGADOR.
    } else {
      if (j == 2) {
        image(tijeraj, 45, 450);                         //IMAGEN TIJERA DEL JUGADOR.
      }
    }
  }
  println(j);                                            //DEVULVO EL RESULTADO DE J.
}


void reglas() {                                          //FUNCION DE "REGLAS DE JUEGO", LLAMANDO A OTRAS FUNCIONES.
  if ( c == j ) {
    empate();                                            //SI C = J, LLAMO A "EMPATE".
  } else {
    if ( j > c) {
      ganar();                                           //SI J > C, LLAMO A "GANAR".
    } else {
      if ( c > j) {
        perder();                                        //SI C > J, LLAMO A "PIERDO".
      }
    }
  }
}


void empate() {                                          //FUNCION EMPATE.
  noStroke();                                            //SIN BORDES.
  fill(0);                                               //RELLENO DEL RECTANGULO SIGUIENTE.
  rect(0, 370, 405, 50);                                 //RECTANGULO, (X, Y, A, B).
  fill(255);                                             //COLOR DEL TEXTO.
  textAlign(CENTER);                                     //ALINEACIÓN DEL TEXTO.
  text("EMPATE", 200, 405);                              //TEXTO A COLOCAR.
}


void ganar() {                                           //FUNCION GANAR.
  noStroke();                                            //SIN BORDES.
  fill(84, 193, 62);                                     //RELLENO DEL RECTANGULO SIGUIENTE.
  rect(0, 370, 405, 50);                                 //RECTANGULO, (X, Y, A, B).
  fill(255);                                             //COLOR DEL TEXTO.
  textAlign(CENTER);                                     //ALINEACIÓN DEL TEXTO.
  text("GANASTE", 200, 405);                             //TEXTO A COLOCAR.
}


void perder() {                                          //FUNCION PERDER
  noStroke();                                            //SIN BORDES.
  fill(193, 62, 62);                                     //RELLENO DEL RECTANGULO SIGUIENTE.
  rect(0, 370, 405, 50);                                 //RECTANGULO, (X, Y, A, B).
  fill(255);                                             //COLOR DEL TEXTO.
  textAlign(CENTER);                                     //ALINEACIÓN DEL TEXTO.
  text("PERDISTE", 200, 405);                            //TEXTO A COLOCAR.
}
