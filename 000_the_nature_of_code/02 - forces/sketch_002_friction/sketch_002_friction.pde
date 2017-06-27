Mover m;

void setup() {
  size(640, 360);
  m = new Mover();
}

void draw() {
  background(255);

  PVector gravity = new PVector(0, 0.3);
  gravity.mult(m.mass);
  m.applyForce(gravity);

  // wind
  // PVector wind = new PVector(0.2, 0);
  // m.applyForce(wind);

  if (mousePressed) {
    // Let's apply friction!
    PVector friction = m.velocity.get();
    friction.normalize();

    float c = -0.1;
    friction.mult(c);
    m.applyForce(friction);
  }

  m.update();
  m.edges();
  m.display();
}
