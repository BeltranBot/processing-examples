ParticleSystem ps;

void setup() {
	size(640, 360);
	ps = new ParticleSystem();
}

void draw() {
	background(255);
	// particles.add(new Particle(new PVector(width/2, height/2)));
	ps.addParticle();
	ps.run();

}
