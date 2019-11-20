class Asteroid extends Floater
{
	private int speedDeRot;
	public Asteroid()
	{
		corners = 50;  
  		xCorners = new int[corners];   
  		yCorners = new int[corners];
  		for(int i = 0; i < corners; i++){
  			xCorners[i] = (int)((Math.random() * (int)(Math.random() * 35)) - 17);
  			yCorners[i] = (int)((Math.random() * (int)(Math.random() * 35)) - 17);
	  	}
  		/*xCorners[1] = (int)(Math.random() * 15 - 7);
  		yCorners[1] = (int)(Math.random() * 15 - 7);
  		xCorners[2] = (int)(Math.random() * 15 - 7);
  		yCorners[2] = (int)(Math.random() * 15 - 7);
  		xCorners[3] = (int)(Math.random() * 15 - 7);
  		yCorners[3] = (int)(Math.random() * 15 - 7);
  		xCorners[4] = (int)(Math.random() * 15 - 7);
  		yCorners[4] = (int)(Math.random() * 15 - 7);*/

  		myColor[0] = 124;   
  		myColor[1] = 124;   
  		myColor[2] = 124;   

  		myCenterX = Math.random() * 500;
  		myCenterY = Math.random() * 500;  

  		myDirectionX = Math.random() * 3 - 1;
  		myDirectionY = Math.random() * 3 - 1; 
  		myPointDirection = -90; 
  		speedDeRot = (int)(Math.random() * 21) - 5;
	}

	public void move(){
		turn(speedDeRot);
		super.move();
	}
}