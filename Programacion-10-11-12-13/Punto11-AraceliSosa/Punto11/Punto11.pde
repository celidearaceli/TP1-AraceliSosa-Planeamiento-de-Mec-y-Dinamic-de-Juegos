private Vector vPersonaje;
private Vector vEnemigo;
private Vector vEnemigoPje;
private PImage escenario;
private PImage enemigo;
private PImage personaje;
private PVector posicionEnemigo;
private PVector posicionBolaFuego;
private BolaFuego bolaFuego;


public void setup(){
  size(600,600);
  vPersonaje = new Vector(new PVector(0,0),new PVector(30,0));
  vEnemigo = new Vector(new PVector(0,0), new PVector(60,0));
  vEnemigoPje = new Vector();
  personaje = loadImage("./personaje.png");
  enemigo = loadImage("./enemigo.png");
  escenario = loadImage("./escenario.png");
  posicionEnemigo = new PVector(width/2,height/2);
  posicionBolaFuego = new PVector(width/2,height/2);

}

public void draw(){
   escenario.resize(600,600);
  imageMode(CENTER);
  background(escenario);
  vEnemigo.setOrigen(posicionEnemigo);
  vPersonaje.setOrigen(new PVector(mouseX,mouseY));
  personaje.resize(100,80);
  imageMode(CENTER);
  image(personaje,mouseX,mouseY);
  vEnemigo.getDestino().normalize();
  vPersonaje.display();
  vEnemigo.display();
  dibujarVecEnemigoPje();
  dibujarEnemigo();
  detectar();
  if (bolaFuego != null) {
  bolaFuego.mover();
  bolaFuego.display();
}

}

public void dibujarEnemigo(){
  enemigo.resize(120,120);
  imageMode(CENTER);
  image(enemigo, posicionEnemigo.x,posicionEnemigo.y);

}

public void dibujarVecEnemigoPje(){
  vEnemigoPje.setOrigen(posicionEnemigo);
  vEnemigoPje.setDestino(PVector.sub(vPersonaje.getOrigen(),posicionEnemigo).normalize());
  vEnemigoPje.display();
}
public void detectar(){
  float productoPunto = vEnemigo.obtenerProductoPunto(vEnemigoPje);
  fill(255);
  text(productoPunto,200,200);
  if(productoPunto>0.866f){
    text("detectado",200,190);
    bolaFuego = new BolaFuego(posicionBolaFuego, PVector.sub(vPersonaje.getOrigen(), posicionEnemigo),new PVector(10,0));

  }
}
