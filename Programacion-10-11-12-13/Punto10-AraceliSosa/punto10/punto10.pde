Vector vector1;
Vector vector2;

public void setup(){
size(600,600);
 vector1= new Vector(new PVector(0,0), new PVector(100,100));
 vector2= new Vector(new PVector(0,0), new PVector(200,50));
}

public void draw(){
  translate(width/2,height/2);
  background(255);
  vector1.display();
  vector2.display();
  

}
