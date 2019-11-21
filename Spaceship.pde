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
		if(myDirectionX >= -1 && myDirectionX <= 1)
			myDirectionX = 0;
	}

	public void subMyDirectionY(){

		myDirectionY--;
		if(myDirectionY >= -1 && myDirectionY <= 1)
			myDirectionY = 0;
	}

	public void addMyDirectionX(){
		myDirectionX++;
		if(myDirectionX >= -1 && myDirectionX <= 1)
			myDirectionX = 0;
	}

	public void addMyDirectionY(){
		myDirectionY++;
		if(myDirectionY >= -1 && myDirectionY <= 1)
			myDirectionY = 0;
	}

	public double getMyDirectionX(){
		return myDirectionX;
	}

	public double getMyDirectionY(){
		return myDirectionY;
	}

	public double getMyCenterX(){
		return myCenterX;
	}

	public double getMyCenterY(){
		return myCenterY;
	}

	public void setMyPointDirection(double degrees){
		myPointDirection = degrees;
	}
	public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor[0], myColor[1], myColor[2]);   
    stroke(myColor[0], myColor[1], myColor[2]);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    if(myDirectionX != 0 || myDirectionY != 0){
    if(frameCount % 15 < 5){
    	line(-7, -4, -11, -5);
    	line(-4, 0, -8, 0);
    	line(-7, 4, -11, 5);
    } 
    if(frameCount % 15 <= 9 && frameCount % 15 >= 5){
    	line(-10, -5, -14, -6);
    	line(-7, 0, -11, 0);
    	line(-10, 5, -14, 6);
    }
    if(frameCount % 15 >= 10){
    	line(-13, -6, -17, -7);
    	line(-10, 0, -14, 0);
    	line(-13, 6, -17, 7);
    }

	}
    
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}
