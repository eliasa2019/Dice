int width = 500;
int side = 100;

void settings() {
  size(width, width);
}

void setup()
{
  background(0, 0, 0);
  noLoop();
}
void draw()
{
  new Die(0, 0, 100);
}
void mousePressed()
{
  redraw();
}
class Die {
  int x, y, side;
  byte number;

  Die() {
    this.x = 10;
    this.y = 10;
    this.side = 10;
    this.roll();
    this.show();
  }
  Die(int x, int y)
  {
    this.x = x;
    this.y = y;
    this.side = 10;
    this.roll();
    this.show();
  }
  Die(int x, int y, int side) {
    this.x = x;
    this.y = y;
    this.side = side;
    this.roll();
    this.show();
  }
  void roll()
  {
    this.number = byte(random(6)+1);
  }
  void show()
  {
    fill(256, 256, 256);
    rect(x, y, side, side, side / 10, side / 10, side / 10, side / 10);
    fill(0, 0, 0);
    switch(this.number) {
    case 1:
      ellipse(side / 2, side / 2, side / 4, side / 4);
      break;
    case 2:
      ellipse(side / 4, side / 4, side / 4, side / 4);
      ellipse(3 * side / 4, 3 * side / 4, side / 4, side / 4);
      break;
    case 3:
      ellipse(side / 4, side / 4, side / 4, side / 4);
      ellipse(side / 2, side / 2, side / 4, side / 4);
      ellipse(3 * side / 4, 3 * side / 4, side / 4, side / 4);
      break;
    case 4:
      ellipse(side / 4, side / 4, side / 4, side / 4);
      ellipse(3 * side / 4, side / 4, side / 4, side / 4);
      ellipse(side / 4, 3 * side / 4, side / 4, side / 4);
      ellipse(3 * side / 4, 3 * side / 4, side / 4, side / 4);
      break;
    case 5:
      ellipse(side / 4, side / 4, side / 4, side / 4);
      ellipse(3 * side / 4, side / 4, side / 4, side / 4);
      ellipse(side / 2, side / 2, side / 4, side / 4);
      ellipse(side / 4, 3 * side / 4, side / 4, side / 4);
      ellipse(3 * side / 4, 3 * side / 4, side / 4, side / 4);
      break;
    case 6:
      ellipse(side / 4, side / 5, side / 4, side / 4);
      ellipse(3 * side / 4, side / 5, side / 4, side / 4);
      ellipse(side / 4, side / 2, side / 4, side / 4);
      ellipse(3 * side / 4, side / 2, side / 4, side / 4);
      ellipse(side / 4, 4 * side / 5, side / 4, side / 4);
      ellipse(3 * side / 4, 4 * side / 5, side / 4, side / 4);
      break;
    default:
      break;
    }
  }
}
