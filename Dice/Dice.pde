/* DICE by Elias A.
 * A Processing project for Mr. Rhinelander's APCSA class at Armbrae Academy, Halifax, Canada
 * Due Friday 9 November 2018
 */

int width = 500;
int side = 100;
int numbers[] = {0, 0, 0, 0, 0, 0};

void settings() {
  size(width, width);
}

void setup()
{
  textSize(20);
  noLoop();
}

void draw()
{
  background(0, 0, 0);
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = 0;
  }
  for (int i = 0; i < width / side - 1; i++) {
    for (int j = 0; j < width / side; j++) {
      new Die(side*j, side*(i+1), side);
    }
  }
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i]*(i+1);
  }
  fill(256, 256, 256);
  text("The total is " + sum + ",\nwith " + numbers[0] + pluralize(numbers[0], " one") + numbers[1] + pluralize(numbers[1], " two") + numbers[2] + pluralize(numbers[2], " three") + "\n" + numbers[3] + pluralize(numbers[3], " four") + numbers[4] + pluralize(numbers[4], " five") + "and " + numbers[5] + pluralize(numbers[5], " six"), width / 6, 20);
}

void mousePressed()
{
  setup();
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
      numbers[0]++;
      ellipse(x + side / 2, y + side / 2, side / 4, side / 4);
      break;
    case 2:
      numbers[1]++;
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 3:
      numbers[2]++;
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + side / 2, y + side / 2, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 4:
      numbers[3]++;
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + side / 4, y + 3 * side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 5:
      numbers[4]++;
      ellipse(x + side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + side / 4, side / 4, side / 4);
      ellipse(x + side / 2, y + side / 2, side / 4, side / 4);
      ellipse(x + side / 4, y + 3 * side / 4, side / 4, side / 4);
      ellipse(x + 3 * side / 4, y + 3 * side / 4, side / 4, side / 4);
      break;
    case 6:
      numbers[5]++;
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

String pluralize(int num, String str) {
  if (str.equals(" six")) return num != 1 ? str + "es." : str + ".";
  else return num != 1 ? str + "s, " : str + ", ";
}
