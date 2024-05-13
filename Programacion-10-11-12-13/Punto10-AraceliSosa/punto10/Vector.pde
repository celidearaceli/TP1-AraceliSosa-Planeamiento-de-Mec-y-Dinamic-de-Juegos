class Vector{
private PVector ptoA;
private PVector ptoB;
private PVector ptoC;
private PVector ptoD;


public Vector(PVector ptoA, PVector ptoB, PVector ptoC){
   this.ptoA = ptoA;
   this.ptoB = ptoB;
   this.ptoC = ptoC;
   calcularD();
}

public void calcularD(){
  PVector vectorBC = PVector.sub(ptoC, ptoB);
  ptoD = PVector.add(ptoA, vectorBC);
}

public void display(){
 
 }
}
