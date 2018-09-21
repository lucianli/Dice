void setup()
{
	noLoop();
	size(600,600);
}
void draw()
{
	background(0);
	Die one = new Die(260,260);
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, random;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		random = (int)(Math.random()*6+1);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(0);
		rect(myX,myY,80,80);
		if (random == 1) {
			ellipse(myX+40,myY+40,10,10);
		}
		else if (random == 2) {
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+65,myY+65,10,10);
		}
		else if (random == 3) {
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+65,myY+65,10,10);
		}
		else if (random == 4) {
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+65,myY+15,10,10);
			ellipse(myX+65,myY+65,10,10);
			ellipse(myX+15,myY+65,10,10);
		}
		else if (random == 5) {
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+65,myY+15,10,10);
			ellipse(myX+65,myY+65,10,10);
			ellipse(myX+15,myY+65,10,10);
			ellipse(myX+40,myY+40,10,10);
		}
		else {
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+20,myY+60,10,10);
			ellipse(myX+40,myY+20,10,10);
			ellipse(myX+40,myY+60,10,10);
			ellipse(myX+60,myY+20,10,10);
			ellipse(myX+60,myY+60,10,10);

		}

	}
}
