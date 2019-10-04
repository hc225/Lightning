int startX = 300;
int startY = 550;
int endX = 300;
int endY = 550;
int counter1 = 1;
int counter2 = 1;
int counter3 = 1;
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
	if(counter1==1)
		ellipse(100, 200, 50, 30);
		ellipse(250, 175, 50, 30);
		ellipse(500, 450, 50, 30);
		fill(100);
	if(counter1==0)
	{
		ellipse(100, 200, 50, 30);
		fill(#1697F7);
	}
	f(counter2==0)
	{
		ellipse(250, 175, 50, 30);
		fill(#1697F7);
	}
	if(counter2==0)
	{
		ellipse(500, 450, 50, 30);
		fill(#1697F7);
	}



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
  		if(50<endX && endX<150 && 170<endY && endY<230)
  			counter1--;
  		if(200<endX && endX<300 && 145<endY && endY<205)
  			counter2--;
  		if(450<endX && endX<550 && 420<endY && endY<480)
  			counter3--;
  	}

  	startX = 300;
	startY = 550;
	endX = 300;
	endY = 550;
}

