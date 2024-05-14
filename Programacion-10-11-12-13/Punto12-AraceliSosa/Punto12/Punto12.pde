private PImage escenario;
TanqueRival tanqueRival;
Tanque unTanque;
JoyPad joyPad;



void setup(){
 size(600,600);
 escenario = loadImage("./escenario.jpg");
 tanqueRival = new TanqueRival(new PVector(300, 100));
 unTanque = new Tanque(new PVector(300, 450));
 joyPad = new JoyPad();


}

void draw(){
  escenario.resize(600,600);
  imageMode(CENTER);
  background(escenario);
  tanqueRival.display();
 boolean esVisible = validarRangoDeVision();
  if (!esVisible) {
    unTanque.display();
  }
  displayVectores();
  if (joyPad.isDerechaPresionado()) {
    unTanque.move(2); 
  }
  if (joyPad.isIzquierdaPresionado()) {
    unTanque.move(4); 
  }
    if (joyPad.isArribaPresionado()) {
    unTanque.move(1); 
  }
  if (joyPad.isAbajoPresionado()) {
    unTanque.move(3); 
  }

}
boolean validarRangoDeVision() {
  return unTanque.esVisible(tanqueRival);
}

void displayVectores() {
  PVector direccionVector= PVector.sub(tanqueRival.getPosicion(),unTanque.getPosicion()).normalize().mult(50);
  strokeWeight(1);
  stroke(255,0,0);
  PVector proyeccionDireccionVector = PVector.add(unTanque.getPosicion(),direccionVector); 
  stroke(#440DFF);//color azul
   line(unTanque.getPosicion().x,unTanque.getPosicion().y,proyeccionDireccionVector.x,proyeccionDireccionVector.y);
   strokeWeight(10);
  point(proyeccionDireccionVector.x,proyeccionDireccionVector.y);
  
  switch(unTanque.getDireccion()){
    case 0: { 
      PVector axysVisualizacion = new PVector(0,-1);
      PVector proyeccionAxysVisualizacion = axysVisualizacion.mult(50);
      strokeWeight(1);
      stroke(#FF0D0D);//color rojo
      line(unTanque.getPosicion().x,unTanque.getPosicion().y,
      unTanque.getPosicion().x + proyeccionAxysVisualizacion.x,
      unTanque.getPosicion().y + proyeccionAxysVisualizacion.y
      );
      strokeWeight(10);
      point(unTanque.getPosicion().x + proyeccionAxysVisualizacion.x,
      unTanque.getPosicion().y + proyeccionAxysVisualizacion.y);
      break;
    }
  }
}


void keyPressed() {
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setPresionoDerecha(true);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setPresionoIzquierda(true);
  }
  if (key == 'w' || keyCode == UP) {
    joyPad.setPresionoArriba(true);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setPresionoAbajo(true);
  }
 
}

void keyReleased() {
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setPresionoDerecha(false);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setPresionoIzquierda(false);
  }
    if (key == 'w' || keyCode == UP) {
    joyPad.setPresionoArriba(false);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setPresionoAbajo(false);
  }
}
