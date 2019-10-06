int startX = 300;
int startY = 550;
int endX = 300;
int endY = 550;
int counter1 = 1;
int counter2 = 1;
int counter3 = 1;
int randomX1 = (int)(Math.random()*151)-75;
int randomX2 = (int)(Math.random()*151)-75;
int randomX3 = (int)(Math.random()*151)-75;
int randomY1 = (int)(Math.random()*151)-75;
int randomY2 = (int)(Math.random()*151)-75;
int randomY3 = (int)(Math.random()*151)-75;
void setup()
{
	size(600,600);
	strokeWeight(1);
	background(#1697F7);
}
void draw()
{
	background(#1697F7);
  noStroke();
	fill(0);
	rect(280,560,20,40);
  fill(#2B1DCE);
	ellipse(290,550,40,40);
  fill(50);
	if(counter1==1)
		ellipse(100+randomX1,200+randomY1,50,30);
  if(counter2==1)
    ellipse(250+randomX2,175+randomY2,50,30);
  if(counter3==1)
    ellipse(450+randomX3,80+randomY3,50,30);
  fill(#1697F7);
	if(counter1==0)
		ellipse(100+randomX1,200+randomY1,50,30);
	if(counter2==0)
		ellipse(250+randomX2,175+randomY2,50,30);
  if(counter3==0)
    ellipse(450+randomX3,80+randomY3,50,30);
}
void mousePressed()
{
	stroke((int)(Math.random()*86));
	while(endY > mouseY)
  	{
  		endX = startX + (int)(Math.random()*41)-20;
  		endY = startY - (int)(Math.random()*10);
  		line(startX, startY, endX, endY);
  		startX = endX;
  		startY = endY;
  		if(50<endX && endX<150 && 170+randomY1<endY && endY<230+randomY1)
  			counter1--;
  		if(200<endX && endX<300 && 145+randomY2<endY && endY<205+randomY2)
  			counter2--;
      if(400<endX && endX<500 && 30+randomY3<endY && endY<80+randomY3)
        counter3--;
  	}
  if(mouseButton == RIGHT)
   {
     counter1 = 1;
     counter2 = 1;
     counter3 = 1;
     randomX1 = (int)(Math.random()*101)-50;
     randomX2 = (int)(Math.random()*101)-50;
     randomX3 = (int)(Math.random()*101)-50;
     randomY1 = (int)(Math.random()*101)-50;
     randomY2 = (int)(Math.random()*101)-50;
     randomY3 = (int)(Math.random()*101)-50;
   }
  startX = 300;
	startY = 550;
	endX = 300;
	endY = 550;
}
