Spaceship player;
int score;
Star[] stars = new Star[2000];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
public void setup() 
{
	rectMode(CENTER);
	size(500, 500);
	player = new Spaceship();
	score = 0;
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
		if(dist(asteroids.get(i).getX(), asteroids.get(i).getY(), player.getX(), player.getY()) <= 28){
			asteroids.get(i).setX(1000);
			asteroids.remove(i);
			score--;
			i--;
			asteroids.add(new Asteroid());
		}
	}
	for(int i = 0; i < bullets.size(); ++i) {
		bullets.get(i).show();
		bullets.get(i).move();
		for(int j = 0; j < asteroids.size(); ++j){
			if(dist(asteroids.get(j).getX(), asteroids.get(j).getY(), bullets.get(i).getX(), bullets.get(i).getY()) <= 20){
				asteroids.remove(j);
				bullets.remove(i);
				score++;
				asteroids.add(new Asteroid());
				break;
			}
		}
	}
	player.show();
  	player.move();
  	fill(255);
  	textSize(20);
  	text("Score: " + score, 0, 20);
  	player.setAcceleration(false);
  	
}
public void keyPressed(){
	if (key == '5') {bullets.add(new Bullet(player));}
	if (key == '8'){
		player.accelerate(.2);
		player.setAcceleration(true);
	}
	if (key == '4') {player.turn(-10);}
	if (key == '6') {player.turn(10);}
	if (key == '2') {
		player.myCenterX = Math.random()*500;
		player.myCenterY = Math.random()*500;
		player.myDirectionX = player.myDirectionY = 0;
		player.myPointDirection = (int)(Math.random()*361);
	}
}