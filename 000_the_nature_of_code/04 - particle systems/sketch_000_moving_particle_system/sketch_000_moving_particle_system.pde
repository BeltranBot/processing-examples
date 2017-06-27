ArrayList<Particle> particles;

void setup() {
	size(640, 360);
	particles = new ArrayList<Particle>();
	// for (int i = 0; i < 10; ++i) {
	// 	particles.add(new Particle(new PVector(width/2, height/2)));
	// }
}

void draw() {
	background(255);
	particles.add(new Particle(new PVector(width/2, height/2)));

	// for (Particle p : particles) {
	// 	p.update();
	// 	p.display();
	// }

	for (int i = particles.size()-1; i >= 0; --i) {
		particles.get(i).update();
		particles.get(i).display();

		if (particles.get(i).isDead()) {
			particles.remove(i);
		}

	}
}
