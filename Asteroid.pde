class Asteroid extends Floater
{
	private int speedDeRot;
	public Asteroid()
	{
		corners = 9;  
  		xCorners = new int[corners];   
  		yCorners = new int[corners];
  		for(int i = 0; i < corners; i++){
  			xCorners[i] = (int)((Math.random() * 21) - 10);
  			yCorners[i] = (int)((Math.random() * 21) - 10);
	  	}
  		
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

	public double rockCenX(){
		return myCenterX;
	}

	public double rockCenY(){
		return myCenterY;
	}
}