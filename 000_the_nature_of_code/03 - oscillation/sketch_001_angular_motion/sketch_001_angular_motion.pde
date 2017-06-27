float a = 0.0;
float aVelocity = 0.0;
float aAcceleration = 0.001;

void setup() {
	size(640, 360);
}

void draw() {
	background(255);
	aAcceleration = map(mouseX, 0, width, -0.001, 0.001);

	// formula of motion
	a += aVelocity;
	aVelocity += aAcceleration;

	rectMode(CENTER);
	stroke(0);
	fill(127);
	// rotation always happens from the point of origin
	// translate(width/2, height/2);
	translate(width/2, height/2);
	// rotate(PI/4);
	rotate(a);
	// since we translated, our point of origin is no2 0.0
	rect(0, 0, 64, 36);
}
