boolean mouseHeld = false;

public void setup() {
  size(800, 800);
  background(0);
}

public void draw() {
  noStroke();
  fill(#8A8AFC);
  sierpinski(200, 600, 400, 40);
}

public void mousePressed() {
  mouseHeld = true;
}

public void mouseReleased() {
  mouseHeld = false;
}

public void sierpinski(int x, int y, int len, int small) {
  if (len <= small) {
    triangle(x+len/4, y-len/2, x, y, x+len/2, y);
    triangle(x+len/2, y-len, x+len/4, y-len/2, x+len/2+len/4, y-len/2);
    triangle(x+len/2+len/4, y-len/2, x+len/2, y, x+len, y);
  } else {
    sierpinski(x, y, len/2, small);
    sierpinski(x+len/2, y, len/2, small);
    sierpinski(x+len/4, y-len/2, len/2, small);
  }
}
