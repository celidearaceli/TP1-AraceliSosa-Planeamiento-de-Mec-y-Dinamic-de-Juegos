private Vector vPersonaje;
private Vector vEnemigo;
private Vector vEnemigoPje;
private PImage escenario;
private PImage enemigo;
private PImage personaje;
private PVector posicionEnemigo;

public void setup(){
  size(600,600);
  vPersonaje = new Vector(new PVector(0,0),new PVector(20,0));
  vEnemigo = new Vector(new PVector(0,0), new PVector(50,0));
  vEnemigoPje = new Vector();
  personaje = loadImage("./personaje.png");
  enemigo = loadImage("./enemigo.png");
  escenario = loadImage("./escenario.png");
  posicionEnemigo = new PVector(width/2,height/2);
}

public void draw(){
   escenario.resize(600,600);
  imageMode(CENTER);
  background(escenario);
  vPersonaje.setOrigen(new PVector(mouseX,mouseY));
  personaje.resize(70,70);
  imageMode(CENTER);
  image(personaje,mouseX,mouseY);
  vPersonaje.display();
  dibujarEnemigo();
  dibujarVecEnemigoPje();

}

public void dibujarEnemigo(){
  enemigo.resize(120,120);
  imageMode(CENTER);
  image(enemigo,10,20);
  image(enemigo, posicionEnemigo.x,posicionEnemigo.y);

}

public void dibujarVecEnemigoPje(){
  vEnemigoPje.setOrigen(posicionEnemigo);
  vEnemigoPje.setDestino(PVector.sub(vPersonaje.getOrigen(),posicionEnemigo).normalize());
  vEnemigoPje.display();
}
