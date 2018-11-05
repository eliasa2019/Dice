/* DICE by Elias A.
 * A Processing project for Mr. Rhinelander's APCSA class at Armbrae Academy, Halifax, Canada
 * Due on Friday 9 November 2018
 */

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
  for (int i = 0; i < width / side; i++) {
    for (int j = 0; j < width / side; j++) {
        new Die(side * j, side * i, side);
    }
  }
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
      ellipse(x + side / 2, y + side / 2, side / 4, side / 4);
      break;
    case 2:
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 3:
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + side / 2, y + side / 2, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 4:
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + side / 4, y + 3 * side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 5:
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + side / 2, y + side / 2, side / 4, side / 4);
      ellipse(x + side / 4, y + 3 * side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 6:
      ellipse(x + side / 4, y + side / 5, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + side / 5, side / 4, side / 4);
      ellipse(x + side / 4, y + side / 2, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + side / 2, side / 4, side / 4);
      ellipse(x + side / 4, y + 4 * side / 5, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 4 * side / 5, side / 4, side / 4);
      break;
    default:
      break;
    }
  }
}
