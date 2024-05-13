class Vector{
  private PVector origen;
  private PVector destino;
  
  public Vector(){
  }
  
  public Vector(PVector origen, PVector destino){
    this.origen = origen;
    this.destino = destino;
  }
  
  public void display(){
    
  }
  
  public void setOrigen(PVector origen){
    this.origen=origen;
  }
  
  public PVector getOrigen(){
    return this.origen;
  }
  
  public void setDestino(PVector destino){
    this.destino=destino;
  }
  
  public PVector getDestino(){
    return this.destino;
  }
  
  
}
