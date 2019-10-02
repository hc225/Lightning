int startX = 300;
int startY = 600;
int endX = 300;
int endY = 600;
void setup()
{
	size(600,600);
	strokeWeight(1);
	background(255);
}
void draw()
{
	
 
}
void mousePressed()
{
	background(255);
	stroke((int)(Math.random()*86),(int)(Math.random()*86),(int)(Math.random()*86));
	while(endY > mouseY)
  	{
  		endX = startX + (int)(Math.random()*21)-10;
  		endY = startY - (int)(Math.random()*10);
  		line(startX, startY, endX, endY);
  		startX = endX;
  		startY = endY;

  	}
  	startX = 300;
	startY = 600;
	endX = 300;
	endY = 600;
}

