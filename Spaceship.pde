class Spaceship extends Floater  
{   
	Spaceship(){
		corners = 3;  
  		xCorners = new int[corners];   
  		yCorners = new int[corners];   
  		xCorners[0] = -5;
  		yCorners[0] = 5;
  		xCorners[1] = 5;
  		yCorners[0] = 0;
  		xCorners[2] = -5;
  		yCorners[0] = -5;
  		myColor = (int)(Math.random() * 255);   
  		myCenterX = 7.5;
  		myCenterY = 7.5;  
  		myDirectionX = 0;
  		myDirectionY = 0; 
  		myPointDirection = 0; 
	}

}
