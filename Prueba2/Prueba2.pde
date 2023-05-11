
PImage [] rojo = new PImage [10];//numero de figuras de ROJO
PImage [] fondoatras = new PImage [3];//numero de figuras de ROJO
int valorfondoatras;
int valorfondoatras2;
int valorRojo;
int valorRojo2;
int fondo;
float x, y;
float tam;
int estado;
int estado2;
GestorDeInteraccion g;

void setup() {

  size( 800, 800 );
  colorMode(HSB, 360, 100, 100);
  imageMode(CENTER);
  fondo = int(random(3, 8));
  background(57, fondo, 97);

  x =random(0.3 * width, 0.6 * width);
  y =random(0.3 *height, 0.6 * height);
  g = new GestorDeInteraccion();
  tam =100;
  estado = int(random(1));
  
  for ( int j = 1; j < rojo.length; j++ )
    rojo [j]  = loadImage("rojo"+ j +".png");
     
   for ( int j = 1; j < rojo.length; j++ )
    rojo [j]  = loadImage("rojo"+ j +".png");
     for ( int j = 1; j < fondoatras.length; j++ )
    fondoatras [j]  = loadImage("fondo"+ j +".png");
   
   


  valorRojo = int(random(1, 12));
   valorRojo2 = int(random(1, 12));
    valorfondoatras = int(random(1, 2));
     valorfondoatras2 = int(random(1, 2));

  

    println ("estado=",estado);
     println ("estado=",estado2);
  

}

void draw() {
  
  background(57, fondo, 97);
  
  if (estado==0) {
      image(rojo[valorRojo], x, y, tam, tam);//
      image(rojo[3], x, y, tam, 100);//
      image(fondoatras[valorfondoatras], 10, y, tam, 400);//
       image(fondoatras[2], 790, y, tam, 400);//
   
    }

  g.actualizar();


  if (g.arriba) {
    println("arriba");
  } else if (g.abajo) {
    println("abajo");
  }
  if (g.derecha) {
    println("derecha");
  } else if (g.izquierda) {
    println("izquierda");
  }

  //para la parte de velocidad(grande o pequena)
  if (g.movGrande) {
    tam++;
    ;
  } else if (g.movPeque) {
    tam =(tam-1);
  }
}
