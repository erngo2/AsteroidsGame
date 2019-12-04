Spaceship ship;
Star[] tar;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
boolean u = false;
boolean d = false;
boolean l = false;
boolean r = false;
boolean shoot = false;
double x = 0;
double y = 0;
int bulletRate = 0;
ArrayList <Bullet> bull = new ArrayList <Bullet>();

public void setup() 
{
	frameRate(60);
	size(500, 500);
	fill(0);
	ship = new Spaceship();
	tar = new Star[1000];
 	for(int i = 0; i < tar.length; i++){tar[i] = new Star();}
 	for(int i = 0; i < 20; i++){rock.add(new Asteroid());}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < tar.length; i++){tar[i].show();}
	for(int i = 0; i < rock.size(); i++){
		rock.get(i).show();
		rock.get(i).move();
		if((dist((float)ship.getMyCenterX(), (float)ship.getMyCenterY(), (float)rock.get(i).rockCenX(), (float)rock.get(i).rockCenY())) < 12){rock.remove(i);}
	}
	for(int e = 0; e < bull.size(); e++){
		for(int i = 0; i < rock.size(); i++){
			if((dist((float)bull.get(e).getMyCenX(), (float)bull.get(e).getMyCenY(), (float)rock.get(i).rockCenX(), (float)rock.get(i).rockCenY())) < 12){
				rock.remove(i);
				bull.remove(e);
				break;
			}
		}
	}
	for(int i = 0; i < bull.size(); i++){
		bull.get(i).show();
		bull.get(i).move();
		if(bull.get(i).getMyCenX() >= 500 || bull.get(i).getMyCenX() <= 0 || bull.get(i).getMyCenY() >= 500 || bull.get(i).getMyCenY() <= 0){bull.remove(i);}    
	}
	textSize(50);
	fill(200, 100, 255);
	text(rock.size(), 30, 50);
	text(bull.size(), 30, 90);
	text(bulletRate, 30, 140);
	ship.show();
	ship.move();
	if(shoot == true & bulletRate < 10){
		bull.add(new Bullet(ship));
		bulletRate++;
	}
	if(u == true){
		ship.setMyDirectionX(0);
		ship.setMyDirectionY(0);
		ship.accelerate(2);
	}
	if(d == true){
		ship.setMyDirectionX(0);
		ship.setMyDirectionY(0);
		ship.accelerate(-2);
	}
	if(l == true){ship.turn(-5);}
	if(r == true){ship.turn(5);}
	x = (int)ship.getMyDirectionX();
	y = (int)ship.getMyDirectionY();
	if(bulletRate > 0 && shoot == false){bulletRate--;}
}

public void mousePressed(){
	for(int i = 0; i < 20; i++)
		rock.add(new Asteroid());
}

public void keyPressed(){
	if(key == 'C' || key == 'c'){shoot = true;}
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
		if(x >= 0){ship.subMyDirectionX();}
		if(x < 0){ship.addMyDirectionX();}
		if(y >= 0){ship.subMyDirectionY();}
		if(y < 0){ship.addMyDirectionY();}
	}
}

public void keyReleased(){
	if(keyCode == UP || key == 'w' || key == 'W'){u = false;}
	if(keyCode == DOWN || key == 's' || key == 'S'){d = false;}
	if(keyCode == LEFT || key == 'a' || key == 'A'){l = false;}
	if(keyCode == RIGHT || key == 'd' || key == 'D'){r = false;}
	if(key == 'C' || key == 'c'){shoot = false;}
}