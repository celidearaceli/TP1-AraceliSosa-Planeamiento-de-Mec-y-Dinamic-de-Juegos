private Vector vector;

private PVector ptoA = new PVector(-12,-20);
private PVector ptoB = new PVector(40,-10);
private PVector ptoC = new PVector(50,20);

void setup() {
  size(600, 600);
  vector = new Vector (ptoA,ptoB, ptoC);
}

void draw() {
  translate(width/2, height/2);
  background(255);
  strokeWeight(1);
  stroke(#DE1D1D);
  line(-width/2,0,width/2,0);
  stroke(#229B37);
  line(0,-height/2,0,height/2);

  
}
