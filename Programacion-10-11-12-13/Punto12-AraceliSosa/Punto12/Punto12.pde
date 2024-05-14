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
  unTanque.display();
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
