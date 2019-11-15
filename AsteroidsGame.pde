Spaceship ship;
Star[] tar;
boolean u = false;
boolean d = false;
boolean l = false;
boolean r = false;
int x = 0;
int y = 0;
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
	ship.show();
	ship.move();
	if(u == true){
		//ship.setMyDirectionX(0);
		//ship.setMyDirectionY(0);
		ship.accelerate(0.25);
	}
	if(d == true){
		//ship.setMyDirectionX(0);
		//ship.setMyDirectionY(0);
		ship.accelerate(-0.25);
	}
	if(l == true){ship.turn(-5);}
	if(r == true){ship.turn(5);}
	x = (int)ship.getMyDirectionX();
	y = (int)ship.getMyDirectionY();
}

public void keyPressed(){

	if(keyCode == UP || key == 'w' || key == 'W'){u = true;}
	if(keyCode == DOWN || key == 's' || key == 'S'){d = true;}
	if(keyCode == LEFT || key == 'a' || key == 'A'){l = true;}
	if(keyCode == RIGHT || key == 'd' || key == 'D'){r = true;}
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
	if(keyCode == UP || key == 'w' || key == 'W'){u = false;}
	if(keyCode == DOWN || key == 's' || key == 'S'){d = false;}
	if(keyCode == LEFT || key == 'a' || key == 'A'){l = false;}
	if(keyCode == RIGHT || key == 'd' || key == 'D'){r = false;}
}