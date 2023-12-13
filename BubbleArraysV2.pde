float factor = .10;
int nob = 100;
int norb = 10;
int randomOrb = 5;
int yValue = 400;
ArrayList <Bubble> bubs;
void setup() {
  size(300, 800);
  bubs = new ArrayList<Bubble>();
}

void draw() {
  background(0);
  stroke(255);
  line(0, yValue, width, yValue);
  stroke(0);
  textSize(30);
  for ( int i = 0; i < bubs.size(); i++) {
    bubs.get(i).show();
    bubs.get(i).rise();
    bubs.get(i).collison(i);
  }
  fill(255);
  text("Total: "+ bubs.size(), 100, 40);
}
void mouseClicked() {
  for ( int i = 0; i < 10; i++) {
    int myX = (int)((Math.random()*260)+20);
    int myY = (int)((Math.random()*yValue)+yValue+20);
    bubs.add(new Bubble(myX, myY));
  }
}
