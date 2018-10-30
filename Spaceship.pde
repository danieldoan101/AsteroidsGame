class Spaceship extends Floater  
{   
	Spaceship(){
        corners = 12;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = 20;
        yCorners[0] = 0;
        xCorners[1] = 4;
        yCorners[1] = 4;
        xCorners[2] = 4;
        yCorners[2] = 16;
        xCorners[3] = 0;
        yCorners[3] = 16;
        xCorners[4] = -3;
        yCorners[4] = 8;
        xCorners[5] = -3;
        yCorners[5] = 4;
        xCorners[6] = -8;
        yCorners[6] = 0;
        xCorners[7] = -3;
        yCorners[7] = -4;
        xCorners[8] = -3;
        yCorners[8] = -8;
        xCorners[9] = 0;
        yCorners[9] = -16;
        xCorners[10] = 4;
        yCorners[10] = -16;
        xCorners[11] = 4;
        yCorners[11] = -4;
        myColor = color(255);
        myCenterX = 50;
        myCenterY = 50;
        myDirectionX = myDirectionY = myPointDirection = 0; 
	}
    public void setX(int x){
    	myCenterX = x;
    }  
    public int getX(){
    	return (int)myCenterX;
    }   
    public void setY(int y){
  	  myCenterY = y;
    }   
    public int getY(){
   	 return (int)myCenterY;
    }   
    public void setDirectionX(double x){
    	myDirectionX = x;
    }   
    public double getDirectionX(){
    	return myDirectionX;
    }   
    public void setDirectionY(double y){
    	myDirectionY = y;
    }   
    public double getDirectionY(){
    	return myDirectionY;
    }   
    public void setPointDirection(int degrees){
    	myPointDirection = degrees;
    }   
    public double getPointDirection(){
    	return myPointDirection;
    } 
}