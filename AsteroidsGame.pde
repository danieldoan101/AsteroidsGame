Spaceship player;
public void setup() 
{
	size(500, 500);
  	player = new Spaceship();
}
public void draw() 
{
	background(197);
  	player.show();
  	player.move();
}
public void keyPressed(){
	if (key == '8'){player.accelerate(.1);}
	if (key == '4') {player.turn(-5);}
	if (key == '6') {player.turn(5);}
	if (key == '5') {
		player.myCenterX = Math.random()*101;
		player.myCenterY = Math.random()*101;
		player.myDirectionX = player.myDirectionY = 0;
		player.myPointDirection = (int)(Math.random()*361);
	}
}
