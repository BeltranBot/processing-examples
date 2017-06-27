float r = 150;
float tetha = 0;
float a_velocity = 0.0;
float a_acceleration = 0.0001;

void setup() {
	size(640, 360);
}

void draw() {
	background(0);
	translate(width/2, height/2);

	float x = r * cos(tetha);
	float y = r * sin(tetha);

	fill(255);
	stroke(255);
	line(0, 0, x, y);
	ellipse(x, y, 50, 50);

	tetha += a_velocity;
	a_velocity += a_acceleration;
	a_velocity = constrain(a_velocity, 0, 1);
}
