private PImage escenario;

void setup(){
 size(600,600);
 escenario = loadImage("./escenario.jpg");
}

void draw(){
  escenario.resize(600,600);
  imageMode(CENTER);
  background(escenario);
}
