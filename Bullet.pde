class Bullet extends Floater{
	public Bullet(Spaceship theShip){
		myCenterX = theShip.getmyCenterX();
		myCenterY = theShip.getmyCenterY();
		myPointDirection = theShip.getmyPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians)+ theShip.getmyDirectionX();
		myDirectionY = 5*Math.sin(dRadians)+ theShip.getmyDirectionY();
	}
	public void show(){
		fill(255);
		stroke(255);
		ellipse((float)myCenterX, (float)myCenterY, 5, 5);
	}
}