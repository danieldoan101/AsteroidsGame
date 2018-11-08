Spaceship player;
Star[] stars = new Star[1111];
Asteroid test;
public void setup() 
{
	rectMode(CENTER);
	size(500, 500);
  	player = new Spaceship();
  	for (int i = 0; i < stars.length; ++i) {
  		stars[i] = new Star();
  	}
  	test = new Asteroid();
}
public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; ++i) {
		stars[i].show();
	}
	test.show();
	test.move();
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