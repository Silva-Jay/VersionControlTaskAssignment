class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    
    //particles randomize their colour
    fill(random(0, 256), random(0, 256), random(0, 256));
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    ellipse(position.x, position.y, 10, 10);
  }
}
