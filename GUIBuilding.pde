/*
 How to add Gui elements the simple way.
 New version on the way
 */

Button testButton;
HScrollBar testHScrollBar;
VScrollBar testVScrollBar;
TextBox testTextBar;

void setup() {
  size(600, 600);
  testButton = new Button(10, 10, 30, 30);
  testHScrollBar = new HScrollBar(10, height/2, width-20, 20, 13);
  testVScrollBar = new VScrollBar(width/2, 10, 20, height - 20, 13);
  testTextBar = new TextBox(10, height*3/4, 200, 35);
}

void draw() {
  testButton.display();
  testHScrollBar.display();
  testVScrollBar.display();
  testTextBar.display();
  if (testButton.buttonPressed) {
    background(210);
    testButton.xpos = (int)random(10, width-10-testButton.objectWidth);
  }
}

void keyReleased() {
  testTextBar.KEYPRESSED(key, keyCode);
}
