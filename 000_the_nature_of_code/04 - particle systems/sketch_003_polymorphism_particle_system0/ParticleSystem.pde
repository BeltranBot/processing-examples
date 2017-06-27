class ParticleSystem {
  ArrayList<Particle> particles;

  ParticleSystem () {
    particles = new ArrayList<Particle>();

  }

  void run() {
    for (int i = particles.size()-1; i >= 0; --i) {
  		particles.get(i).update();
  		particles.get(i).display();

  		if (particles.get(i).isDead()) {
  			particles.remove(i);
  		}
  	}
  }

  void addParticle( ) {
    float r = random(1);
    if (r < 0.4) {
      particles.add(new SquareParticle(new PVector(width/2, height/2)));
    } else {
      particles.add(new Particle(new PVector(width/2, height/2)));
    }

  }

}
