import java.util.Random;

Random generator;

void setup() {
  size(400, 300);
  generator = new Random();
}

void draw() {
  background(255);
  
  float h = (float) generator.nextGaussian();
  /*
    accomodates standard deviation
    values will be more likely to be within 10 units from the mean
  */
  h *= 10; 
  /*
   accomodates mean value
   100 is the most likely value of the distribution
  */
  h += 100; 
  fill(color(random(255), random(255), random(255)));
  ellipse(width/2, height/2, h, h);
  System.out.println("h: " + h);
}