
class Asteroid extends Floater{
	private int myRotationSpeed;
	public Asteroid () {
		myRotationSpeed = (int)(Math.random()*5)-2;
		corners = 6;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = 6;
        yCorners[0] = -8;
        xCorners[1] = 10;
        yCorners[1] = 0;
        xCorners[2] = 6;
        yCorners[2] = 8;
        xCorners[3] = -6;
        yCorners[3] = 8;
        xCorners[4] = -10;
        yCorners[4] = 0;
        xCorners[5] = -6;
        yCorners[5] = -8;
        myColor = 176;
        myCenterX = 50;
        myCenterY = 50;
        myDirectionX = Math.random();
        myDirectionY = Math.random();
        myPointDirection = (int)(Math.random()*361);
	}
    public void setX(int x){myCenterX = x;}  
    public int getX(){return (int)myCenterX;}   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;}
    public void move (){      
     	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;     

    	myPointDirection += myRotationSpeed;
   
    	if(myCenterX >width){     
    	  myCenterX = 0;    
    	}    
    	else if (myCenterX<0){     
	      myCenterX = width;    
    	}    
    	if(myCenterY >height){    
	      myCenterY = 0;    
    	} 
 	   else if (myCenterY < 0){     
	      myCenterY = height;    
    	}   
  	}
}