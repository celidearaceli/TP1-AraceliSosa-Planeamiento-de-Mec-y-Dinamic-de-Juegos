class Vector{
PVector origen;
PVector destino; 


public Vector(){

}

public Vector(PVector origen, PVector destino){
this.origen = origen;
this.destino = destino;
}

public void display(){

line(origen.x,origen.y,origen.x+destino.x,origen.y+destino.y);
 
}


public void setOrigen(PVector origen){
this.origen= origen;
}
public PVector getOrigen(){
return this.origen;
}
public void setDestino(PVector destino){
this.destino= destino;
}
public PVector getDestino(){
return this.destino;
}

}
