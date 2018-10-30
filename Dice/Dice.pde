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
  int x;
  int y;
  byte number;
  int size;

  Die() {
    x = int(random(width));
    y = int(random(height));
  }
  Die(int x, int y) //constructor
  {
    x = this.x;
    y = this.y;
    size = width / 5;
  }
  Die(int x, int y, int size) {
    x = this.x;
    y = this.y;
    size = this.size;
  }
  void roll()
  {
    this.number = 3;
  }
  void show()
  {
    fill(0, 0, 0);
    switch(this.number) {
    case 1:
      ellipse(width / 2, height / 2, size, size);
      break;
    case 2:
      ellipse(width / 4, height / 4, size, size);
      ellipse(3 * width / 4, 3 * height / 4, size, size);
      break;
    case 3:
      ellipse(width / 4, height / 4, size, size);
      ellipse(width / 2, height / 2, size, size);
      ellipse(3 * width / 4, 3 * height / 4, size, size);
      break;
      case 4:
      case 5:
      case 6:
      default:
      break;
    }
  }
}
