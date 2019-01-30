	int x = 50;
	int y = 550;
	int len = 500;
public void setup()
{
	size(600,600);
	background(0);
}
public void draw()
{
	sierpinski(x,y,len);
}
public void mouseDragged()//optional
{
	len=mouseX;
}
public void mousePressed(){

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20)
	{
		triangle(x, y, x+len, y, x+len/2, y-len); //(float)(y-(len/2* Math.sqrt(3))) used for equalateral triangle
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}

public void pentapinski(int x, int y, int len)
{
	//if (len <= 20)
	//{
		beginShape();
		vertex(x, y);
		vertex(x+40, y);
		vertex(x+50,y-35);
		vertex(x+20,y-55);
		vertex(x-10,y-35);
		endShape(CLOSE);
	//}
}