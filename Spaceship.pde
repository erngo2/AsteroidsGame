class Spaceship extends Floater  
{   
	public Spaceship(){
		corners = 4;  
  		xCorners = new int[corners];   
  		yCorners = new int[corners];   
  		xCorners[0] = 8;
  		yCorners[0] = 0;
  		xCorners[1] = -6;
  		yCorners[1] = -4;
  		xCorners[2] = -3;
  		yCorners[2] = 0;
  		xCorners[3] = -6;
  		yCorners[3] = 4;

  		myColor[0] = 50;   
  		myColor[1] = 124;   
  		myColor[2] = 56;   

  		myCenterX = 250;
  		myCenterY = 350;  

  		myDirectionX = 0;
  		myDirectionY = 0; 
  		myPointDirection = -90; 
	}

	public void setMyCenterX(double x){
		myCenterX = x;
	}

	public void setMyCenterY(double y){
		myCenterY = y;
	}

	public void setMyDirectionX(double x){
		myDirectionX = x;
	}

	public void setMyDirectionY(double y){
		myDirectionY = y;
	}

	public void subMyDirectionX(){
		myDirectionX--;
		if(myDirection)
	}

	public void subMyDirectionY(){
		myDirectionY--;
	}

	public void addMyDirectionX(){
		myDirectionX++;
	}

	public void addMyDirectionY(){
		myDirectionY++;
	}

	public double getMyDirectionX(){
		return myDirectionX;
	}

	public double getMyDirectionY(){
		return myDirectionY;
	}
	public void setMyPointDirection(double degrees){
		myPointDirection = degrees;
	}
}
