Spaceship bob;//your variable declarations here
Star [] num = new Star[500];
//Bullet abc;
boolean wPressed, aPressed, dPressed, sPressed;
public void setup() 
{
	aPressed = false;
	sPressed = false;
	dPressed = false;
	wPressed = false;
	size(600,600);
	bob = new Spaceship();
	//abc = new Bullet(bob);
	for(int i = 0; i<num.length;i++)
	{
		num[i] = new Star();
	}
}
public void draw() 
{
    background(0);
    bob.show();
    bob.move();
    for(int i = 0; i < num.length; i++)
    {
    	num[i].show();
    }
	if(wPressed)
	{
		bob.accelerate(0.15);
	}
	if(sPressed)
	{
		bob.accelerate(-0.15);
	}
	if(aPressed)
	{
		bob.turn(-5);
	}
	if(dPressed)
	{
		bob.turn(5);
	}
}
public void keyPressed()
{
	if(key == 'a')
	{
		aPressed = true;
	}
	if(key == 's')
	{
		sPressed = true;
	}
	if(key == 'd')
	{
		dPressed = true;
	}
	if(key == 'w')
	{
		wPressed = true;
	}
	if(key == 'r')
	{
		bob.setX((int)(Math.random()*500));
		bob.setY((int)(Math.random()*500));
		bob.setPointDirection((int)(Math.random()*360));
		bob.setDirectionX(0);
		bob.setDirectionY(0);
	}
}
public void keyReleased() 
{
	if(key == 'a')
	{
		aPressed = false;
	}
	if(key == 's')
	{
		sPressed = false;
	}
	if(key == 'd')
	{
		dPressed = false;
	}	
	if(key == 'w')
	{
		wPressed = false;
	}
}
//public void mousePressed()
//{
	//abc.show();
    //abc.move();
//}