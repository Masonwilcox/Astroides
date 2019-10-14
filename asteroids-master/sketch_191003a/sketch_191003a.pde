boolean wkey, skey, akey, dkey, spacekey;

PImage Spaceship;

Spaceship mySpaceship;

ArrayList <GameObject> myGameObjects;

void setup() {
  size(1000, 800);
  Spaceship =loadImage("spaceship.png");
  Spaceship.resize(100, 100);

  imageMode(CENTER);
  mySpaceship = new Spaceship();
  myGameObjects = new ArrayList<GameObject>();
  myGameObjects.add(mySpaceship);
  myGameObjects.add(new Asteroid());  
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
}



void draw() {
  background(0);
  mySpaceship.show();
  mySpaceship.act();
  int i = 0;
  while (i < myGameObjects.size()) {
    GameObject bullet =  myGameObjects.get(i);
    bullet.show();
    bullet.act();
    


    i++;
  }
  
 
}


void keyPressed() {



  if (key == 'W' || key == 'w' ) wkey = true;
  if (key == 'S' || key == 's' ) skey = true;
  if (key == 'A' || key == 'a' ) akey = true;
  if (key == 'D' || key == 'd' ) dkey = true;
  if (key == ' ')            spacekey = true;
}

void keyReleased() {
  if (key == 'W' || key == 'w' ) wkey = false;
  if (key == 'S' || key == 's' ) skey = false;
  if (key == 'A' || key == 'a' ) akey = false;
  if (key == 'D' || key == 'd' ) dkey = false;
  if (key == ' ')            spacekey = false;
}
