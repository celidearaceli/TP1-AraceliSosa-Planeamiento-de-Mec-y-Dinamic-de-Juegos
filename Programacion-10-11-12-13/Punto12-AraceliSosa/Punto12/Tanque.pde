class Tanque{

  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  private int direccion;
  
  
  public Tanque (PVector posicion){
    this.posicion= posicion;
    this.velocidad= new PVector(3,3);
    this.direccion= 0;
    this.imagen= loadImage("personaje.png");
  
  }
 
  
  public void setPosicion(PVector posicion){
    this.posicion= posicion;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setDireccion(int direccion){
    this.direccion= direccion;
  }
  
  public int getDireccion(){
    return this.direccion;
  }
  
 
  
  public void display(){
    pushMatrix();
    translate(this.posicion.x, this.posicion.y);
    rotate(radians(direccion * 90)); // Rotar el tanque segun la dirección
    imageMode(CENTER);
    image(this.imagen, 0, 0, 70, 70); // Dibujar el tanque
    popMatrix();
  }
    void move(int direccion) {
    switch (direccion) {
      case 1: // Arriba
        posicion.y -= velocidad.y;
        break;
      case 2: // Derecha
        posicion.x += velocidad.x;
        break;
      case 3: // Abajo
        posicion.y += velocidad.y;
        break;
      case 4: // Izquierda
        posicion.x -= velocidad.x;
        break;
    }
   // this.direccion = direccion - 1; // Actualizar la direccion del tanque
  }
  
  
}
