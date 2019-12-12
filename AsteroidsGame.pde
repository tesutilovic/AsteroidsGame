Spaceship bob = new Spaceship();
Star[] galaxy = new Star[100];
ArrayList <Asteroids> theList = new ArrayList <Asteroids> ();
ArrayList <Bullet> bullet = new ArrayList <Bullet> ();

public void setup() 
{
  background(0);
  size(600,600);
  for (int i = 0; i<galaxy.length;i++)
  galaxy[i] = new Star();
 for (int i = 0; i<10;i++){
  theList.add(new Asteroids());
}
}
public void draw() 
{
  background (0, 0, 113);
  bob.show();
    bob.move();
  for (int i = 0; i<galaxy.length; i++){
  	galaxy[i].show();
  	}
  for (int i = 0; i<theList.size(); i++){
  	theList.get(i).show();
  	theList.get(i).move();
if (dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)theList.get(i).getmyCenterX(), (float)theList.get(i).getmyCenterY()) < 20)
	theList.remove(i);
  }
  for (int i = 0; i<bullet.size(); i++){
    for (int m = 0; m<theList.size();m++){
      if (dist((float)bullet.get(i).getmyCenterX(), (float)bullet.get(i).getmyCenterY(), (float)theList.get(m).getmyCenterX(), (float)theList.get(m).getmyCenterY()) < 20)
  theList.remove(m);
    }
  }
  
  for (int i =0; i<bullet.size(); i++){
    bullet.get(i).show();
    bullet.get(i).move();
  }
}
public void keyPressed()
{
	if (keyCode==LEFT)
	bob.turn(-2);
	if (keyCode==RIGHT)
	bob.turn(2);
	if (keyCode==UP)
	bob.accelerate(0.3);
	if (keyCode==DOWN){
	bob.setmyPointDirection((int)(Math.random()*360));
	bob.setmyDirectionX(0);
	bob.setmyDirectionY(0);
	bob.setmyCenterX((int)(Math.random()*width));
	bob.setmyCenterY((int)(Math.random()*height));
}
  if (key == ' ')
  bullet.add(new Bullet(bob));

}
