private Vector vPersonaje;
private Vector vEnemigo;
private Vector vEnemigoPersonaje;
private PImage escenario;


public void setup(){
  size(600,600);
  vPersonaje = new Vector(new PVector(0,0),new PVector(20,0));
  vEnemigo = new Vector(new PVector(0,0), new PVector(50,0));
  vEnemigoPersonaje = new Vector();
  escenario = loadImage("./escenario.png");
}

public void draw(){
   escenario.resize(600,600);
  imageMode(CENTER);
  background(escenario);
}
