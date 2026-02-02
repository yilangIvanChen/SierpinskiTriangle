public void setup() {
  size(800,800);
}

public void draw() {
  sierpinski(200,600,400);
}

public void sierpinski(int x, int y, int len) {
  if (len < 50)
    triangle(x+len/2, y-len, x, y, x+len, y);
  else{
    triangle(x+len/2, y-len, x, y, x+len, y);
    sierpinski(x,y,len/2);
  }
}
