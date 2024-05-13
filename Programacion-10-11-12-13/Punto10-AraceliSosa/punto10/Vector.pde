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
 line(ptoA.x,ptoA.y,ptoB.x,ptoB.y);
 line(ptoB.x,ptoB.y,ptoC.x,ptoC.y);
 line(ptoC.x,ptoC.y,ptoD.x,ptoD.y);
 line(ptoD.x,ptoD.y,ptoA.x,ptoA.y);
 point(ptoD.x,ptoD.y);
 }
}
