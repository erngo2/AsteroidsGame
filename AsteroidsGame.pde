Spaceship ship;
Star[] tar;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Integer> hp = new ArrayList <Integer>();
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
	for(int i = 0; i < 4; i++){hp.add(0);}
 	for(int i = 0; i < tar.length; i++){tar[i] = new Star();}
 	for(int i = 0; i < 20; i++){rock.add(new Asteroid());}
}
public void draw() 
{
	background(0);
	//background stars
	for(int i = 0; i < tar.length; i++){tar[i].show();}
	//bullet collision with rock only
	for(int e = 0; e < bull.size(); e++){
		for(int i = 0; i < rock.size(); i++){
			if((dist((float)bull.get(e).getMyCenX(), (float)bull.get(e).getMyCenY(), (float)rock.get(i).rockCenX(), (float)rock.get(i).rockCenY())) < 12){
				rock.remove(i);
				bull.remove(e);
				break;
			}
		}
	}
	//
	for(int i = 0; i < bull.size(); i++){
		bull.get(i).show();
		bull.get(i).move();
		if(bull.get(i).getMyCenX() >= 500 || bull.get(i).getMyCenX() <= 0 || bull.get(i).getMyCenY() >= 500 || bull.get(i).getMyCenY() <= 0){bull.remove(i);}    
	}
	//miscellaneous text for numbers
	textSize(15);

	fill(200, 100, 255);
	text("Number of asteroids: " + rock.size(), 30, 50);
	rect(20, 450, 150 - (bulletRate * 7.5), 15);
	//hp bar
	/*for(int i = 0; i < hp.size() - 1; i++){
		stroke(100, 200, 100);
		rect((i) * 50 + 20, 420, 50, 15);
		noStroke();
	}*/

	fill(100,200,150);
	text("Heat Capacity: " + (20 - bulletRate), 21, 465);
	//ship movement and stuff
	ship.show();
	ship.move();
	if(shoot == true & bulletRate < 20){
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
	//bullet fire rate
	if(bulletRate > 0 && shoot == false){bulletRate--;}
	//asteroids move and ship collisions
	for(int i = 0; i < rock.size(); i++){
		rock.get(i).show();
		rock.get(i).move();
		if((dist((float)ship.getMyCenterX(), (float)ship.getMyCenterY(), (float)rock.get(i).rockCenX(), (float)rock.get(i).rockCenY())) < 12){
			rock.remove(i);
			if(hp.size() > 2){hp.remove(0);}
			else{
				noLoop();
				textSize(25);
				fill(200, 200, 200);
				textAlign(CENTER, CENTER);
				text("Game Over", 250, 200);
				text("Restart? Press R", 250, 230);
			}
		}
		for(int ca = 0; ca < hp.size() - 1; ca++){
			fill(200, 100, 255);
			stroke(100, 200, 100);
			rect((ca) * 50 + 20, 420, 50, 15);
			noStroke();
		}
	}
	
}

public void mousePressed(){
	if(mouseButton == RIGHT){
		for(int i = 0; i < 20; i++){rock.add(new Asteroid());}
	}
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
	if(key == 'R' || key == 'r'){
		loop();
		for(int i = 0; i < 3; i++){hp.add(0);}
		ship.setMyDirectionX(0);
		ship.setMyDirectionY(0);
		ship.setMyCenterX(Math.random() * 500);
		ship.setMyCenterY(Math.random() * 500);
		ship.setMyPointDirection(Math.random() * 360);
		for(int i = 0; i < rock.size(); i++){
		rock.get(i).setRockX(Math.random() * 500);
		rock.get(i).setRockY(Math.random() * 500);
		}
		
	}
}

public void keyReleased(){
	if(keyCode == UP || key == 'w' || key == 'W'){u = false;}
	if(keyCode == DOWN || key == 's' || key == 'S'){d = false;}
	if(keyCode == LEFT || key == 'a' || key == 'A'){l = false;}
	if(keyCode == RIGHT || key == 'd' || key == 'D'){r = false;}
	if(key == 'C' || key == 'c'){shoot = false;}
}