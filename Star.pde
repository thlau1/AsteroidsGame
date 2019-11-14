class Star //note that this class does NOT extend Floater
{
	private float myX, myY;
    Star()
    {
    	myX = (float)(Math.random()*600);
    	myY = (float)(Math.random()*600);
    }
    public void show()
    {
    	stroke(255);
    	fill(255);
    	ellipse(myX,myY,1,1);
    }
}
