Spaceship bob = new Spaceship();
Star[] galaxy = new Star[100];
ArrayList <Asteroids> theList = new ArrayList <Asteroids> ();

public void setup() 
{
  background(0);
  size(600,600);
  for (int i = 0; i<galaxy.length;i++)
  galaxy[i] = new Star();
 for (int i = 0; i<5;i++){
  theList.add(new Asteroids());
}
}
public void draw() 
{
  background(0);
  for (int i = 0; i<galaxy.length; i++){
  	galaxy[i].show();
  	bob.show();
  	bob.move();}
  for (int i = 0; i<theList.size(); i++){
  	theList.get(i).show();
  	theList.get(i).move();
if (dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)theList.get(i).getmyCenterX(), (float)theList.get(i).getmyCenterY()) < 20)
	theList.remove(i);
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
}
