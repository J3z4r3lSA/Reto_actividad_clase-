Car myCar1;
void setup() {
  size(680,680);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(85, 197, 204),300,300,2,190,190,190);//Parametros de la figura que vamos a mover   
}
void draw() {
  //background(100);//jajajsna
  myCar1.drive();
  myCar1.display();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  int back1;
  int back2;
  int back3;
 
  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed, int b1, int b2, int b3) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    back1= b1;
    back2=b2;
    back3=b3;
 
    }
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    //rect(xpos,ypos,60,68);//tronco
    fill(225,60,229);
    arc(xpos,ypos,60,60,PI,TWO_PI);
    rect(xpos,ypos,60,30);
    triangle(xpos,ypos,295,220,280,235);
    triangle(xpos,ypos,310,220,295+7.5,235);
    triangle(xpos,ypos,325,220,317.5,235);
    triangle(xpos,ypos,340,220,340,235);

    //ojos
    fill(255,255,255);
    ellipse(xpos,ypos,15,15);
    ellipse(xpos+20,ypos,15,15);

  //pupilas
    fill(0);
    ellipse(xpos,ypos,8,8);
    ellipse((xpos+20),(ypos),8,8);
    }
  void drive() {
    //AQUI VAN LAS CONDICIONS 
    if ((keyPressed==true)&&(key=='s')){
    ypos = ypos+xspeed*2;}
    if ((keyPressed==true)&&(key=='w')){
    ypos = ypos-xspeed*2;}

    if ((keyPressed==true)&&(key=='d')){
    xpos = xpos+xspeed*2;}
    if ((keyPressed==true)&&(key=='a')){
    xpos = xpos-xspeed*2;}
        //Tenemos que dejar una separación para que la condición if se mantenga 
    if (ypos > 647) { //Abjao cafe
     ypos = 650;
     back1= 102;
     back2= 51;
     back3= 0;
     //background(back1,back2,back3);
    }
    if (ypos < 30) { //Arriba amarillo
      ypos = 26;
      back1= 254;
      back2= 241;
      back3= 3;
     //background(back1,back2,back3);
}
    if (xpos > 647) { //Derecha
    //fill(200);
      xpos = 650;
      back1= 255;
      back2= 192;
      back3= 203;
      //background(190, 157, 158);  Rosa  
     // background(back1,back2,back3);
    }
    if (xpos < 30) { //Izquierda Morado 169, 108, 191
 //     fill(250);
      xpos = 26;
      back1= 127;
      back2= 0;
      back3= 255;
      
      //background(190, 157, 158);  
      //background(back1,back2,back3);
    }
    background(back1, back2, back3);
  }
}
