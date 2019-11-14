class Spaceship extends Floater //extends Floater  
{   
    Spaceship() //your code here
    {
    	corners = 4;
    	xCorners = new int [corners];
    	yCorners = new int [corners];
    	myColor = 255;
    	myCenterX = myCenterY = 300;
    	myDirectionX = myDirectionY = 0;
    	myPointDirection = 0;
    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;    	
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;  
    	xCorners[3] = 0; 
    	yCorners[3] = 0;   
    }
    public void setX(int x)
    {
    	myCenterX = x;
    }
    public double getX()
    {
    	return (int)myCenterX;
    }
    public void setY(int y)
    {
    	myCenterY = y;
    }
    public double getY()
    {
    	return (int)myCenterY;
    }
    public void setDirectionX(double x)
    {
    	myDirectionX = x;
    }
    public double getDirectionX()
    {
    	return myDirectionX;
    }
    public void setDirectionY(double y)
    {
    	myDirectionY = y;
    }
    public double getDirectionY()
    {
    	return myDirectionY;
    }
    public void setPointDirection(int degrees)
    {
    	myPointDirection = degrees;
    }
    public double getPointDirection()
    {
    	return myPointDirection;
    }
}
