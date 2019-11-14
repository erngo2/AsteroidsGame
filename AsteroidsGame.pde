Spaceship ship;
Star[] tar;
double x = 0;
double y = 0;
public void setup() 
{
	size(500, 500);
	fill(0);
	ship = new Spaceship();
	tar = new Star[1000];
 	for(int i = 0; i < tar.length; i++){
 		tar[i] = new Star();
 	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < tar.length; i++)
 		tar[i].show();
	ship.move();
	ship.show();
	if(x == 1){ship.accelerate(0.5);}
	if(x == -1){ship.accelerate(-0.5);}
	if(y == 1){ship.turn(-10);}
	if(y == -1){ship.turn(10);}
	x = ship.getMyDirectionX();
	y = ship.getMyDirectionY();
}

public void keyPressed(){

	if(keyCode == UP || key == 'w' || key == 'W'){x = 1;}
	if(keyCode == DOWN || key == 's' || key == 'S'){x = -1;}
	if(keyCode == LEFT || key == 'a' || key == 'A'){y = 1;}
	if(keyCode == RIGHT || key == 'd' || key == 'D'){y = -1;}
	if(key == 'G' || key == 'g'){
		ship.setMyDirectionX(0);
		ship.setMyDirectionY(0);
		ship.setMyCenterX(Math.random() * 500);
		ship.setMyCenterY(Math.random() * 500);
		ship.setMyPointDirection(Math.random() * 360);
	}
	if(key == ' '){
		if(x > 0)
			ship.subMyDirectionX();
		if(x < 0)
			ship.addMyDirectionX();
		if(y > 0)
			ship.subMyDirectionY();
		if(y < 0)
			ship.addMyDirectionY();
	}
}

public void keyReleased(){
	if(keyCode == UP || key == 'w' || key == 'W'){x = 0;}
	if(keyCode == DOWN || key == 's' || key == 'S'){x = -0;}
	if(keyCode == LEFT || key == 'a' || key == 'A'){y = 0;}
	if(keyCode == RIGHT || key == 'd' || key == 'D'){y = -0;}
}