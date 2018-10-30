class Star //note that this class does NOT extend Floater
{
  private double mySize, myCenterX, myCenterY;
  Star(){
  	mySize = Math.random()*3;
  	myCenterX = Math.random()*500;
  	myCenterY = Math.random()*500;
  }
  public void show(){
  	stroke(0);
  	fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  	rect((float)myCenterX, (float)myCenterY, (float)mySize, (float)mySize);
  }
}
