int lenReal = 20;

public void setup() {
  size(800,800);
  background(0);
}

public void draw() {
  sierpinski(200,600,400);
}

public void sierpinski(int x, int y, int len) {
  if (len > lenReal){
    triangle(x+len/4, y-len/2, x, y, x+len/2, y);
    triangle(x+len/2, y-len, x+len/4, y-len/2, x+len/2+len/4, y-len/2);
    triangle(x+len/2+len/4, y-len/2, x+len/2, y, x+len, y);
  }
  else{
    triangle(x+len/4, y-len/2, x, y, x+len/2, y);
    triangle(x+len/2, y-len, x+len/4, y-len/2, x+len/2+len/4, y-len/2);
    triangle(x+len/2+len/4, y-len/2, x+len/2, y, x+len, y);
    sierpinski(x,y,len*2);
  }
}
