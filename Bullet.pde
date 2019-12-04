class Bullet extends Floater
{
	public Bullet(Spaceship ship){
		myCenterX = ship.getMyCenterX();
		myCenterY = ship.getMyCenterY();
		myPointDirection = ship.getMyPoint();
		myDirectionX = 10 * Math.cos(myPointDirection*(Math.PI/180)) + ship.getMyDirectionX();
		myDirectionY = 10 * Math.sin(myPointDirection*(Math.PI/180)) + ship.getMyDirectionY();
	}

	public void move(){
		super.move();
	}

	public void show(){
		fill(40, 40, 120); 
		stroke(40, 40, 120);
    	ellipse((float)myCenterX, (float)myCenterY, 7, 7);
	}

	public double getMyCenX(){
		return myCenterX;
	}

	public double getMyCenY(){
		return myCenterY;
	}
}