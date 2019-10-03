int startX = 300;
int startY = 550;
int endX = 300;
int endY = 550;
int xY = 1;
void setup()
{
	size(600,600);
	strokeWeight(1);
	background(#1697F7);
}
void draw()
{
	background(#1697F7);
	fill(0);
	rect(280,560, 20,40);
	fill(50);
	ellipse(290, 550, 40, 40);
	if(xY=1)
		ellipse(250, 350, 50, 30);
}
void mousePressed()
{
	stroke((int)(Math.random()*86));
	while(endY > mouseY)
  	{
  		endX = startX + (int)(Math.random()*21)-10;
  		endY = startY - (int)(Math.random()*10);
  		line(startX, startY, endX, endY);
  		startX = endX;
  		startY = endY;
  		if(230<=endX && endX=<270 && 320<=endY && endY<=380)
  		{
  			xY=0;
  			rect(290, 550, 50, 50);
  		}	
 
  	}

  	startX = 300;
	startY = 550;
	endX = 300;
	endY = 550;
}

