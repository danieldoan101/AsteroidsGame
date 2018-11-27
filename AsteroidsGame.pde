Spaceship player;
Star[] stars = new Star[2000];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup() 
{
	rectMode(CENTER);
	size(500, 500);
  	player = new Spaceship();
  	for (int i = 0; i < stars.length; ++i) {
  		stars[i] = new Star();
  	}
  	for (int i = 0; i < 15; ++i) {
  		asteroids.add(new Asteroid());
  	}
}
public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; ++i) {
		stars[i].show();
	}
	for (int i = 0; i < asteroids.size(); ++i) {
		asteroids.get(i).show();
		asteroids.get(i).move();
		if(dist(asteroids.get(i).getX(), asteroids.get(i).getY(), player.getX(), player.getY())<=12){
			asteroids.get(i).setX(1000);
			asteroids.remove(i);
			i--;
			asteroids.add(new Asteroid());
		}
	}
	player.show();
  	player.move();
  	player.setAcceleration(false);
}
public void keyPressed(){
	if (key == '8'){
		player.accelerate(.1);
		player.setAcceleration(true);
	}
	if (key == '4') {player.turn(-5);}
	if (key == '6') {player.turn(5);}
	if (key == '2') {
		player.myCenterX = Math.random()*501;
		player.myCenterY = Math.random()*501;
		player.myDirectionX = player.myDirectionY = 0;
		player.myPointDirection = (int)(Math.random()*361);
	}
}