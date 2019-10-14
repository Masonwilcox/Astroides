  float BA;

class Bullet extends GameObject {

  Bullet() {
    location = new PVector (mySpaceship.location.x, mySpaceship.location.y);
    velocity = new PVector (mySpaceship.direction.x, mySpaceship.direction.y);
    velocity.setMag (10);
    //location.x = mySpaceship.location.x;
    //location.y = mySpaceship.location.y;
    //velocity.x = mySpaceship.direction.x;
    //velocity.x = mySpaceship.direction.y;
  }

  void show() {
    fill (0, 255, 0);
    ellipse(location.x, location.y, 20, 20);
  }
  void act() {
    super.act();
    if (location.y <= -50 ||location.y >= height+60 || location.x <= -50 || location.x >= width+60  ) {
      BA = 1;
    }
    else {
      BA = 0;
    }
   


          }
        }
