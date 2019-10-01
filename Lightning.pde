int startX = 300;
int startY = 600;
int endX = 300;
int endY = 600;
void setup()
{
	size(600,600);
	strokeWeight(1);
	background(1);
}
void draw()
{
	stroke((int)(Math.random()*256));
  	while(endY > 0)
  	{
  		endX = startX + (int)(Math.random()*21)-10;
  		endY = startY + (int)(Math.random()*10);
  		line(startX, startY, endX, endY);
  		startX = endX;
  		startY = endY;
  	}
}
void mousePressed()
{
	startX = 300;
	startY = 600;
	endX = 300;
	endY = 600;

}

