int width = 500;
int height = width;

void settings() {
  size(width, height);
}

void setup()
{
  background(256, 256, 256);
  noLoop();
}
void draw()
{
  Die die = new Die(0, 0);
  die.roll();
  die.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int x, y, size, diameter;
  byte number;

  Die() {
    this.x = 10;
    this.y = 10;
  }
  Die(int x, int y)
  {
    this.x = x;
    this.y = y;
    diameter = width / 5;
  }
  Die(int x, int y, int diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
  }
  void roll()
  {
    this.number = byte(random(5)+1);
  }
  void show()
  {
    fill(0, 0, 0);
    switch(this.number) {
    case 1:
      ellipse(width / 2, height / 2, diameter, diameter);
      break;
    case 2:
      ellipse(width / 4, height / 4, diameter, diameter);
      ellipse(3 * width / 4, 3 * height / 4, diameter, diameter);
      break;
    case 3:
      ellipse(width / 4, height / 4, diameter, diameter);
      ellipse(width / 2, height / 2, diameter, diameter);
      ellipse(3 * width / 4, 3 * height / 4, diameter, diameter);
      break;
    case 4:
      ellipse(width / 4, height / 4, diameter, diameter);
      ellipse(3 * width / 4, height / 4, diameter, diameter);
      ellipse(width / 4, 3 * height / 4, diameter, diameter);
      ellipse(3 * width / 4, 3 * height / 4, diameter, diameter);
      break;
    case 5:
      ellipse(width / 4, height / 4, diameter, diameter);
      ellipse(3 * width / 4, height / 4, diameter, diameter);
      ellipse(width / 2, height / 2, diameter, diameter);
      ellipse(width / 4, 3 * height / 4, diameter, diameter);
      ellipse(3 * width / 4, 3 * height / 4, diameter, diameter);
      break;
    case 6:
      ellipse(width / 4, height / 5, diameter,diameter);
      ellipse(3 * width / 4, height / 5, diameter, diameter);
      ellipse(width / 4, height / 2, diameter,diameter);
      ellipse(3 * width / 4, height / 2, diameter, diameter);
      ellipse(width / 4, 4 * height / 5,diameter,diameter);
      ellipse(3 * width / 4, 4 * height / 5,diameter,diameter);
      break;
    default:
      break;
    }
  }
}
