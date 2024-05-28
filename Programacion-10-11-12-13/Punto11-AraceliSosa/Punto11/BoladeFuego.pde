class BolaFuego{
  private PVector posicion;
  private PVector velocidad;
  private PVector direccion;
  private PImage imagen;
  private boolean detectado=true;
  
  public BolaFuego(PVector posicion, PVector direccion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.direccion = direccion;
  }
  
  
  public void display(){
    imagen=loadImage("fuego.png");
    imagen.resize(80,60);
    image(imagen,posicion.x,posicion.y);
    if(this.posicion.x>width){
     this.posicion.x=-40;
     detectado=false;
   }
   if(this.posicion.x==-30){
     this.posicion.x=width/2;
     this.posicion.add(velocidad);
   }
  
  }
  
  public void mover(){
    
    if(detectado==true){
      this.posicion.add(velocidad);
    }
  } 
  }
  
  
  
  
  
  
  
  
  
  
  
  
 
