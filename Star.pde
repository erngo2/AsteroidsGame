public class Star //note that this class does NOT extend Floater
{
	private int myX, myY;
 	private int[] colour;
 	private float sizz;
	public Star()
 	{
 		myX = (int)(Math.random() * 500);
 		myY = (int)(Math.random() * 500);
 		colour = new int[4];
 		colour[0] = (int)(Math.random() * 255);
 		colour[1] = (int)(Math.random() * 255);
 		colour[2] = (int)(Math.random() * 255);
 		colour[3] = (int)(Math.random() * 80);
 		sizz = (float)(Math.random() * 10);

 	}
 	public void show()
 	{
 		noStroke();
 		fill(colour[0], colour[1], colour[2], colour[3]);
 		ellipse(myX, myY, sizz, sizz);
 	}
}
