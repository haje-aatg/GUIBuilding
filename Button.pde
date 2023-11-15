class Button extends GUIObjects {
  boolean buttonPressed = false;

  Button() {
    super();
    objectWidth = 180;
    objectHeight = 90;
    xpos = 10;
    ypos = 10;
  }
  Button(int xp, int yp, int ow, int oh) {
    super();
    objectWidth = ow;
    objectHeight = oh;
    xpos = xp;
    ypos = yp;
  }
  void display() {
    if (overObject()) {
      fill(objectGUIHighlight);
      if (mousePressed) {
        if (!buttonPressed) {
          buttonPressedEffect();
        }
        buttonPressed = true;
      } else {
        buttonPressed = false;
      }
    } else {
      fill(objectGUIColor);
      if (buttonPressed) {
        buttonPressed = false;
      }
    }
    stroke(objectGUIBorder);
    rect(xpos, ypos, objectWidth, objectHeight);
  }
  void buttonPressedEffect() {
    println("Button Pressed!!!");
  }
}
