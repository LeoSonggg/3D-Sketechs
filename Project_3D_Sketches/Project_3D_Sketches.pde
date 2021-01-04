float rotx, roty, rotz;

void setup() {
  size(800, 800, P3D);
  //rotx = radians(15);
  //roty = radians(45);
  //rotz = radians(15);
}

void draw() {
  background(255);
  cube(width/2, height/2, 0, #FF0000, 200);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  fill(c);
  rotateX(rotx);
  rotateY(roty);
  rotateZ(rotz);
  
  stroke(0);
  strokeWeight(3);
  box(size); //side length
  popMatrix();
}

void ball(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  fill(c);
  rotateX(rotx);
  rotateY(roty);
  rotateZ(rotz);
  
  stroke(0);
  strokeWeight(3);
  sphere(size); 
  popMatrix();
}

void mouseDragged() { 
  rotx += (pmouseY - mouseY) * 0.01; 
  roty += (pmouseX - mouseX) * -0.01;
}
