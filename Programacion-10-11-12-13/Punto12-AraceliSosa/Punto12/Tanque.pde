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
    public boolean esVisible (TanqueRival tanqueRival){
    boolean esVisible = false;
    PVector direccionDeTanqueRivalVector = PVector.sub(tanqueRival.getPosicion(),this.posicion);
    direccionDeTanqueRivalVector.normalize();
  
    PVector direcciontoViewVector= new PVector();
  
    switch(this.direccion){
      case 0:{
        direcciontoViewVector = new PVector(0,-1,0);
        break;
      }
    }
  
    float dotProduct = PVector.dot(direcciontoViewVector,direccionDeTanqueRivalVector);
    if (dotProduct > 0.8){
      esVisible = true;
      spin(direcciontoViewVector,direccionDeTanqueRivalVector);
    }
    return esVisible;
  }
  
   public void spin(PVector direcciontoViewVector,PVector direccionDeFuelVector){
    float angle = PVector.angleBetween(direcciontoViewVector,direccionDeFuelVector);
    PVector rotationAxys = direcciontoViewVector.cross(direccionDeFuelVector);
    int clockWise =1;
  
    if (rotationAxys.z < 0){
      clockWise=-1;
    }
  
    pushMatrix();
    imageMode(CENTER);
    translate(this.posicion.x,this.posicion.y);
    rotate(angle*clockWise);
    image(this.imagen,0,0,this.imagen.width* 0.10,this.imagen.height* 0.10);
    popMatrix();
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
      case 1: 
        posicion.y -= velocidad.y;
        break;
      case 2:
        posicion.x += velocidad.x;
        break;
      case 3: 
        posicion.y += velocidad.y;
        break;
      case 4: 
        posicion.x -= velocidad.x;
        break;
    }
  }
  
  
}
