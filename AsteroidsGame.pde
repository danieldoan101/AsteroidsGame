Spaceship player;
Star[] stars = new Star[1111];
public void setup() 
{
	rectMode(CENTER);
	size(500, 500);
  	player = new Spaceship();
  	for (int i = 0; i < stars.length; ++i) {
  		stars[i] = new Star();
  	}
}
public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; ++i) {
		stars[i].show();
	}
	player.show();
	stroke(255);
	if ((player.getDirectionX()!=0)||(player.getDirectionY()!=0)) {
		translate((float)player.getX(), (float)player.getY());
		rotate((float)(player.getPointDirection()*(Math.PI/180)));
		line(player.getX()-9, player.getY()-12, player.getX()-5, player.getY()-12);
		line(player.getX()-9, player.getY()-8, player.getX()-5, player.getY()-8);
		line(player.getX()-9, player.getY()+8, player.getX()-5, player.getY()+8);
		line(player.getX()-9, player.getY()+12, player.getX()-5, player.getY()+12);
		line(player.getX()-14, player.getY(), player.getX()-10, player.getY());
		rotate(-1*(float)(player.getPointDirection()*(Math.PI/180)));
		translate(-1*(float)player.getX(), -1*(float)player.getY());
	}
  	player.move();
}
public void keyPressed(){
	if (key == '8'){player.accelerate(.1);}
	if (key == '4') {player.turn(-5);}
	if (key == '6') {player.turn(5);}
	if (key == '2') {
		player.myCenterX = Math.random()*501;
		player.myCenterY = Math.random()*501;
		player.myDirectionX = player.myDirectionY = 0;
		player.myPointDirection = (int)(Math.random()*361);
	}
}