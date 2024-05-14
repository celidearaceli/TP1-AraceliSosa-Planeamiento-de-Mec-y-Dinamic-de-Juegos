PVector position;
PVector velocity;

void setup() {
  size(600, 400);
  position = new PVector(width / 2, height / 2);
  velocity = new PVector(3, 2); // Velocidad inicial
}

void draw() {
  background(255);
  
  // Mover la bola
  position.add(velocity);
  
  // Comprobar colisiones con las paredes
  if (position.x > width || position.x < 0) {
    velocity.x *= -1;
  }
  if (position.y > height || position.y < 0) {
    velocity.y *= -1;
  }
  
  // Dibujar la bola
  ellipse(position.x, position.y, 20, 20);
}
