class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;

  float a = 0.0;
  float aVelocity = 0.0;
  float aAcceleration = 0.001;

  float mass;

  Mover() {
    position = new PVector(400,50);
    velocity = new PVector(1,0);
    acceleration = new PVector(0,0);
    mass = 1;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void update() {
    aAcceleration = acceleration.x/10.0;
    a += aVelocity;
  	aVelocity += aAcceleration;

    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    pushMatrix();
    translate(position.x, position.y);
    rotate(a);
    rectMode(CENTER);
    rect(0,0,16,16);
    popMatrix();
  }

  void checkEdges() {

    if (position.x > width) {
      position.x = 0;
    } else if (position.x < 0) {
      position.x = width;
    }

    if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
    }

  }

}
