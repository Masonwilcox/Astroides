class Asteroid extends GameObject {

  Asteroid() {
    location = new PVector (random(0, width), random(0, height));
      velocity = new PVector (random(-1, 1), random(-5, 5));
  }

  void show() {
    fill (150);
    ellipse(location.x, location.y, lives*50 ,lives*50);
  }

  void act() {
    super.act();
    int i = 0;
    while (i < myGameObjects.size()){
      GameObject myObj = myGameObjects.get(i);
      if(myObj instanceof Bullet){
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y)  < 60){
          lives= 0;
        }
        
      }
      i++;
    }
    
  }
}
