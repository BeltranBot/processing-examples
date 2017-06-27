
void setup() {
  size(500, 300);
}

void draw() {
  background(255);
  strokeWeight(2);
  stroke(0);
  noFill();

  translate(width/2, height/2);
  ellipse(0, 0, 4, 4);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);

  // subsctracts the center vector to the mouse position
  mouse.sub(center);
  // scales the vector by 0.5
  mouse.mult(2);
  // float m = mouse.mag();
  // fill(255, 0, 0);
  // rect(0, 0, m, 20);

  // mouse.normalize();
  // mouse.mult(50);
  // same result as the two lnes above
  mouse.setMag(50);


  line(0,0,mouse.x,mouse.y);

}
