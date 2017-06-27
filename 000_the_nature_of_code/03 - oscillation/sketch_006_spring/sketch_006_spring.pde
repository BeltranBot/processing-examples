float angle = 0.5;
float a_velocity = 0.1;

void setup() {
	size(640, 360);
}

void draw() {
	background(255);
	float amplitude = 300;
	float y = map(cos(angle), -1, 1, 50, 150);
	angle += a_velocity;

	ellipseMode(CENTER);
	stroke(0);
	fill(175);
	translate(width/2, 0);
	line(0, 0, 0, y);
	ellipse(0, y, 40, 40);

}
