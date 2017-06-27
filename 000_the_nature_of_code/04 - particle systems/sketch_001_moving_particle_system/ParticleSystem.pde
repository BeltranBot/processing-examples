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
    particles.add(new Particle(new PVector(width/2, height/2)));
  }

}
