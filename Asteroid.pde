/*
class Asteroid extends Floater{
	private int myRotationSpeed;
	public Asteroid () {
		myRotationSpeed = (int)(Math.random()*3)-1;
		corners = 0;
        xCorners = new int[corners];
        yCorners = new int[corners];

        myColor = 176;
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
    public void move ()   //move the floater in the current direction of travel{      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;     

    //turns the asteroid
    	myPointDirection += myRotationSpeed;

    //wrap around screen    
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
}*/