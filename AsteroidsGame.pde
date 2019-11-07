Spaceship ship;
public void setup() 
{
	size(500, 500);
	fill(0);
	ship = new Spaceship();
}
public void draw() 
{
	background(192);
	ship.move();
	ship.show();
}

void keyPressed(){
	/*if((ship.myDirectionX < 5 && ship.myDirectionY < 5) && (ship.myDirectionX > -5 && ship.myDirectionY > -5)){*/
		if(keyCode == UP || key == 'w' || key == 'W'){ship.accelerate(1);}
	//}
	if(keyCode == DOWN || key == 's' || key == 'S'){ship.accelerate(-0.1);}
	if(keyCode == LEFT || key == 'a' || key == 'A'){ship.turn(-10);}
	if(keyCode == RIGHT || key == 'd' || key == 'D'){ship.turn(10);}
	if(key == 'G' || key == 'g'){
		ship.myDirectionX = 0;
		ship.myDirectionY = 0;
		ship.myCenterX = Math.random() * 500;
		ship.myCenterY = Math.random() * 500;
	}
	if(key == ' '){
		ship.myDirectionX = 0;
		ship.myDirectionY = 0;
	}
}
