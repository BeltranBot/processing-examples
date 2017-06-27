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
    // Let's apply drag force!
    PVector drag = m.velocity.get();
    drag.normalize();

    float c = -0.03;
    float speed_sq = m.velocity.magSq();
    drag.mult(c * speed_sq);
    m.applyForce(drag);
  }

  m.update();
  m.edges();
  m.display();
}
