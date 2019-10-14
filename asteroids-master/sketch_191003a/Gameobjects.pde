abstract class GameObject {
  
  int lives;
  PVector velocity, location;
  boolean alive;
  
  GameObject(){
    
    
  }
  
  void show(){
    
    
  }
  
  void act(){
    location.add(velocity);

    if (location.y <= -50) location.y = height + 50;
    if (location.y >= height+60) location.y = - 50;
    if (location.x <= -50) location.x = width + 50;
    if (location.x >= width+60) location.x = - 50;
    
  }
  
  boolean alive(){
    return alive;
    
  }
  
}
