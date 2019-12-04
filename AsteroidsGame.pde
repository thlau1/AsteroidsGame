Spaceship sue;//your variable declarations here
Star [] num = new Star[500];
ArrayList <Asteroids> crash = new ArrayList <Asteroids>();
ArrayList <Bullet> abc = new ArrayList <Bullet>();
boolean wPressed, aPressed, dPressed, sPressed;
public void setup() 
{
	aPressed = false;
	sPressed = false;
	dPressed = false;
	wPressed = false;
	size(600,600);
	sue = new Spaceship();
	for(int i = 0; i<num.length;i++)
	{
		num[i] = new Star();
	}
	for(int i = 0; i < 8; i++)
	{
		crash.add(new Asteroids());
	}
}
public void draw() 
{
    background(0);
    sue.show();
    sue.move();
    //stars
    for(int i = 0; i < num.length; i++)
    {
    	num[i].show();
    }
    //movement
	if(wPressed)
	{
		sue.accelerate(0.10);
	}
	if(sPressed)
	{
		sue.accelerate(-0.10);
	}
	if(aPressed)
	{
		sue.turn(-5);
	}
	if(dPressed)
	{
		sue.turn(5);
	}
	//asteroids
	for(int i = 0; i < crash.size(); i++)
	{
		crash.get(i).show();
		crash.get(i).move();
	}
	//keep 8 asteroids on screen at all times
	if(crash.size() < 8)
	{
		crash.add(new Asteroids());
	}
	//bullets
	for(int i = 0; i <abc.size(); i++)
	{
		abc.get(i).show();
		abc.get(i).move();
	}
	//collsion of bullets and asteroids
	for(int i = 0; i < crash.size(); i++)
	{
		for(int a = 0; a < abc.size(); a++)
		{
			if(dist((float)(abc.get(a).getX()), (float)(abc.get(a).getY()), (float)(crash.get(i).getX()), (float)(crash.get(i).getY())) < 25)
			{
				crash.remove(i);
				abc.remove(a);
				break;
			}
		}
	}
	//collision of ship and asteroids
	for(int i = 0; i < crash.size(); i++)
	{
		if(dist((float)sue.getX(), (float)sue.getY(), (float)(crash.get(i).getX()), (float)(crash.get(i).getY())) < 25)
		{
			crash.remove(i);
			break;
		}
	}
}
public void keyPressed()
{
	//movement
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
		sue.setX((int)(Math.random()*500));
		sue.setY((int)(Math.random()*500));
		sue.setPointDirection((int)(Math.random()*360));
		sue.setDirectionX(0);
		sue.setDirectionY(0);
	}
}
public void keyReleased() 
{
	//movement
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
public void mousePressed()
{
	//shooting bullets
	abc.add(new Bullet(sue));
}