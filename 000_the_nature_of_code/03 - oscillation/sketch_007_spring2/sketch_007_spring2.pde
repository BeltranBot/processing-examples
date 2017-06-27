PVector origin;
Bob bob;
float rest_length;

void setup() {
	size(640, 360);
	rest_length = 200;
	origin = new PVector(width/2, 0);
	bob = new Bob(width/2, 240);
}

void draw() {
	background(255);

	line(origin.x, origin.y, bob.position.x, bob.position.y);

	PVector spring = PVector.sub(bob.position, origin);
	float current_length = spring.mag();
	spring.normalize();
	float k = 0.9;
	float stretch = current_length - rest_length;

	spring.mult(-k*stretch);
	bob.applyForce(spring);

	PVector wind = new PVector(0.3, 0);
	if (mousePressed) {
		bob.applyForce(wind);
	}

	PVector gravity = new PVector(0, 0.5);
	bob.applyForce(gravity);

	bob.update();
	bob.display();

}
