class Monster {

  float r, g, b;
  float x, y;
  float wX, wY;
  float q, a;
  float w= 85;
  float s=160;
  float j, k, l;

  Monster(float xloc, float yloc) {
    x= xloc;
    y=yloc;
    q=xloc;
    a=xloc;
  }
  void display() {

    //left leg
    noStroke();
    fill(255, 165, 0);
    rect(x-260, y-75, 25, 75);
    //right leg
    rect(x-160, y-75, 25, 75);

    //top horn
    noStroke();
    fill(255, 246, 215);
    triangle(x-208, y-350, x-198, y-400, x-188, y-350);
    //left horn
    triangle(x-248, y-320, x-242, y-380, x-228, y-330);
    //right horn
    triangle(x-168, y-330, x-153, y-380, x-148, y-320);

    //left arm
    stroke(255, 151, 148);
    strokeWeight(20);
    noFill();
    arc(x-110, y-130, 67, 200, 0, PI/2, OPEN);
    //right arm
    arc(x-290, y-130, 67, 200, PI/2, PI, OPEN);

    // Body
    noStroke();
    fill(r, g, b);
    ellipse(x-200, y-200, 300, 300);

    // Left Eye
    noStroke();
    fill(255);
    ellipse(x-280, y-250, 40, 40);
    // Right Eye
    ellipse(x-120, y-250, 40, 40);

    //one eye
    noStroke();
    fill(255);
    ellipse(x-200, y-250, 100, 120);

    // one eye pupil   
    // quad(330, 250, 300, 280, 280, 250, 300, 220);
    noStroke();
    fill(0, 0, 255);
    quad(x-168, y-250, x-200, y-210, x-233, y-250, x-200, y-290);

    // Mouth
    noStroke();
    fill(0);
    rectMode(CORNER);
    quad(q-269, y-s, q-269, y-w, q-128, y-w, q-128, y-s);

    //top teeth
    noStroke();
    fill(255);
    triangle(a-253, y-s, a-243, y-s+25, a-233, y-s);
    pushMatrix();
    translate(30, 0);
    triangle(a-253, y-s, a-243, y-s+25, a-233, y-s);
    translate(30, 0);
    triangle(a-253, y-s, a-243, y-s+25, a-233, y-s);
    translate(30, 0);
    triangle(a-253, y-s, a-243, y-s+25, a-233, y-s);
    popMatrix();

    //bottom teeth
    triangle(q-268, y-w, q-258, y-w-25, q-248, y-w);
    pushMatrix();
    translate(30, 0);
    triangle(q-268, y-w, q-258, y-w-25, q-248, y-w);
    translate(30, 0);
    triangle(q-268, y-w, q-258, y-w-25, q-248, y-w);
    translate(30, 0);
    triangle(q-268, y-w, q-258, y-w-25, q-248, y-w);
    translate(30, 0);
    triangle(q-268, y-w, q-258, y-w-25, q-248, y-w);
    popMatrix();
  } //end display

  void change() {
    if (keyPressed) {
      r += random(5);
      g += 2;
      b += 5;
      if (r > 255) { //when r is greater than 255, the value is reset to 0
        r=0;
      }
      if (g > 255) { //when g is greater than 255, the value is reset to 0
        g=0;
      }
      if (b > 255) { //when b is greater than 255, the value is reset to 0
        b=0;
      }
    }//end keyPressed
  }//end update
  
  void eyes() {
    wX = map(mouseX, 0, width, -10, 9);
    wY = map(mouseY, 0, height, -16, 4);
  }//end eyes

  void mouth() {
    if (mousePressed) {
      if (w>110) {
        w=85;
        s=160;
      } else
        w+=1;
      s-=1;
    }//end mousePressed
  }//end mouth
  
  void move() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == RIGHT) {
          q +=1;
          a+=1;
          x+=1;
        }//end right
        if (keyCode == UP) {
          y-=1;
        }//end up
        if (keyCode == LEFT) {
          q-=1;
          a-=1;
          x-=1;
        }//end left
        if (keyCode == DOWN) {
          y+=1;
        }//end down
      }//end keycoded
    }//end keypressed
  }//end move

  void feet(float j, float k, float l) {
    //left foot
    noStroke();
    fill(j, k, l);
    quad(x-230, y, x-265, y, x-275, y+30, x-220, y+30);
    //right foot
    quad(x-130, y, x-165, y, x-175, y+30, x-120, y+30);
  }//end feet

  void eyecolor(float j, float k, float l) {
    // Left eye pupil
    noStroke();
    fill(j, k, l);
    ellipse(x-280+wX, y-243+wY, 20, 20);
    // Right eye pupil
    ellipse(x-120+wX, y-243+wY, 20, 20);
  }//end eyecolor

  void constant(int valA, int valB) {
    x += valA;
    a+= valA;
    q+= valA;
    if (x>width+350){
     x=0; 
     a =0;
     q=0;
    } //end if
  }//end constant
}//end class