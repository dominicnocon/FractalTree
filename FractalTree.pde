private double fractionLength = .8; 
private int smallestBranch = 2; 
private double branchAngle = .5;  
public void setup() 
{   
	size(200,200);    
	noLoop(); 
} 
public void draw() 
{   
	background(200);   
	stroke(0);   
	line(100,50, 100,200);   
	drawBranches(100,170,50,Math.PI*3/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle, angle2 = angle - branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x, y, endX1, endY1);
	line(x,y, endX2, endY2);
	if (branchLength > smallestBranch)
	{
		drawBranches(endX1, endY1, branchLength * fractionLength, angle1);
		drawBranches(endX2, endY2, branchLength * fractionLength, angle2);
	}
} 
