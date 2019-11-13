Spaceship ship;
Star[] tar;
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
	background(192);
	for(int i = 0; i < tar.length; i++)
 		tar[i].show();
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
		ship.setMyDirectionX(0);
		ship.setMyDirectionY(0);
		ship.setMyCenterX(Math.random() * 500);
		ship.setMyCenterY(Math.random() * 500);
		ship.setMyPointDirection(Math.random() * 360);
	}
	if(key == ' '){
		ship.setMyDirectionX(0);
		ship.setMyDirectionY(0);
	}
}
