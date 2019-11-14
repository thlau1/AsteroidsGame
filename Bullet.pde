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
        ellipse((int)myCenterX, (int)myCenterY, 5, 5);
    }
}