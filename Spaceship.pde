class Spaceship extends Floater  
{   
    private boolean isAccelerating;
	public Spaceship(){
        isAccelerating = false;
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
        myColor = 255;
        myCenterX = 250;
        myCenterY = 250;
        myDirectionX = myDirectionY = myPointDirection = 0; 
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
    public void setAcceleration(boolean accelerating){isAccelerating = accelerating;}
    public boolean getAcceleration(){return isAccelerating;}
    public void show ()  //Draws the floater at the current position  
    {             
        fill(myColor);   
        stroke(0,0,255);    
        
        //translate the (x,y) center of the ship to the correct position
        translate((float)myCenterX, (float)myCenterY);

        //convert degrees to radians for rotate()     
        float dRadians = (float)(myPointDirection*(Math.PI/180));
        
        //rotate so that the polygon will be drawn in the correct direction
        rotate(dRadians);
        
        //draw the polygon
        beginShape();
        for (int nI = 0; nI < corners; nI++)
        {
          vertex(xCorners[nI], yCorners[nI]);
        }
        endShape(CLOSE);
        
        //draw rockets here
        if (isAccelerating) {
            stroke(255);
            line(-9, -12, -5, -12);
            line(-9, -8, -5, -8);
            line(-9, +8, -5, +8);
            line(-9, +12, -5, +12);
            line(-14, 0, -10, 0);
        }

        //"unrotate" and "untranslate" in reverse order
        rotate(-1*dRadians);
        translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }   
}