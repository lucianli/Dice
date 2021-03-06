int count = 0;
void setup()
{
	noLoop();
	size(600,600);
}
void draw()
{
	background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	for (int j = 20; j <= 500; j +=80) {
		for (int i = 20; i <= 500; i +=80) {
			Die one = new Die(i,j);
			one.show();
		}
	}
	text("Total: "+count,500,595);
}
void mousePressed()
{
	redraw();
	count = 0;
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
	void show()
	{
		fill((int)(Math.random()*200+55),(int)(Math.random()*200+55),(int)(Math.random()*200+55));
		rect(myX,myY,80,80,15);
		fill(0);
		if (random == 1) {
			ellipse(myX+40,myY+40,10,10);
			count = count + 1;
		}
		else if (random == 2) {
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+60,10,10);
			count = count + 2;
		}
		else if (random == 3) {
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+60,myY+60,10,10);
			count = count + 3;
		}
		else if (random == 4) {
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+20,10,10);
			ellipse(myX+60,myY+60,10,10);
			ellipse(myX+20,myY+60,10,10);
			count = count + 4;
		}
		else if (random == 5) {
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+60,myY+20,10,10);
			ellipse(myX+60,myY+60,10,10);
			ellipse(myX+20,myY+60,10,10);
			ellipse(myX+40,myY+40,10,10);
			count = count + 5;
		}
		else {
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+20,myY+40,10,10);
			ellipse(myX+20,myY+60,10,10);
			ellipse(myX+60,myY+20,10,10);
			ellipse(myX+60,myY+40,10,10);
			ellipse(myX+60,myY+60,10,10);
			count = count + 6;

		}
	}
}
