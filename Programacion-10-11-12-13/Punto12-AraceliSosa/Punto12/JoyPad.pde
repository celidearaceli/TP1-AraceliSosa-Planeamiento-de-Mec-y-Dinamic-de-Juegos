class JoyPad{
private boolean presDerecha;
private boolean presIzquierda;
private boolean presArriba;
private boolean presAbajo;

public boolean isDerechaPresionado(){
return this.presDerecha;
}
public void setPresionoDerecha(boolean presDerecha){
this.presDerecha=presDerecha;
}

public boolean isIzquierdaPresionado(){
return this.presIzquierda;
}
public void setPresionoIzquierda(boolean presIzquierda){
this.presIzquierda=presIzquierda;
}

public boolean isArribaPresionado(){
return this.presArriba;
}
public void setPresionoArriba(boolean presArriba){
this.presArriba=presArriba;
}

public boolean isAbajoPresionado(){
return this.presAbajo;
}
public void setPresionoAbajo(boolean presAbajo){
this.presAbajo=presAbajo;
}
}
