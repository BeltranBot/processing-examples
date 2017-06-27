ParticleSystem ps;

void setup() {
	size(640, 360);
	ps = new ParticleSystem();
}

void draw() {
	background(255);

	PVector gravity = new PVector(0, 0.05);
	ps.applyForce(gravity);

	// wind
	if (mousePressed) {
		PVector wind = new PVector(0.1, 0);
		ps.applyForce(wind);
	}

	ps.addParticle();
	ps.run();

}
