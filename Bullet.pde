class Bullet extends Floater
{
	double dRadians;
    Bullet(Spaceship sue)
    {
        myCenterX = sue.myCenterX;
        myCenterY = sue.myCenterY;
        myPointDirection = sue.getPointDirection();
        dRadians = myPointDirection*(Math.PI/180);
        myDirectionX = 5 * Math.cos(dRadians) + sue.getDirectionX();
        myDirectionY = 5 * Math.sin(dRadians) + sue.getDirectionY();
    }
    public void show()
    {
    	fill(255);
        ellipse((int)myCenterX, (int)myCenterY, 5, 5);
    }
    public void move()
    {
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;  
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