class Spaceship extends Floater  
{   
	Spaceship(){

	}
    abstract public void setX(int x){
    	myCenterX = x;
    }  
    abstract public int getX(){
    	return myCenterX;
    }   
    abstract public void setY(int y){
  	  myCenterY = y;
    }   
    abstract public int getY(){
   	 return myCenterY;
    }   
    abstract public void setDirectionX(double x){
    	myDirectionX = x;
    }   
    abstract public double getDirectionX(){
    	return myDirectionX;
    }   
    abstract public void setDirectionY(double y){
    	myDirectionY = y;
    }   
    abstract public double getDirectionY(){
    	return myDirectionY;
    }   
    abstract public void setPointDirection(int degrees){
    	myPointDirection = degrees;
    }   
    abstract public double getPointDirection(){
    	return myPointDirection;
    } 
}