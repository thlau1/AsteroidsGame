class Asteroids extends Floater
{
	private int myRotation, mySize;
	Asteroids()
	{
		myRotation = (int)(Math.random()*11) - 5;
		myCenterX = Math.random() * width;
		myCenterY = Math.random() * height;
		myDirectionX = Math.random() * 4;
		myDirectionY = Math.random() * 4;
		myPointDirection = Math.random() * 360;
    	myColor = 255;	
    	mySize = (int)(Math.random()*5)+6;
    	corners = 5;
    	xCorners = new int [corners];
    	yCorners = new int [corners];
    	xCorners[0] = 0 * mySize;
    	yCorners[0] = -3 * mySize;
    	xCorners[1] = 3 * mySize;
    	yCorners[1] = -2 * mySize;
    	xCorners[2] = 1 * mySize;
    	yCorners[2] = 3 * mySize;  	
    	xCorners[3] = -3 * mySize;
    	yCorners[3] = 2 * mySize;
    	xCorners[4] = -3 * mySize;
    	yCorners[4] = -1 * mySize;

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
    public int getSize()
    {
    	return mySize;
    } 
	public void move()
	{
		myPointDirection += myRotation;
		super.move();
	}
}