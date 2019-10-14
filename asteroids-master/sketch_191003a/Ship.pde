class Spaceship extends GameObject {

  //instance variables


  PVector direction;

  //constructor(s)
  Spaceship() {
    lives = 3;
    location = new PVector (width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector (0, -1);
  }

  //behaviour functions
  void show() {
    pushMatrix();

    translate(location.x, location.y);
    rotate(direction.heading()); 
    image(Spaceship, 0, 0);



    popMatrix();
  }

  void act() {
    super.act();

    if (wkey) velocity.add(direction);
    if (skey) velocity.sub(direction);
    if (akey) direction.rotate (-radians(2));
    if (dkey) direction.rotate (radians(2));
    if (spacekey) myGameObjects.add(new Bullet());
  }
}
