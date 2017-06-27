class Walker {
  int x, y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void render() {
    stroke(this.randomColor());
    point(x, y);
  }
  
  void step() {
    int choice = int(random(4));
    
    if(choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
  
  color randomColor() {
    return color(random(255), random(255), random(255));
  }
}