class Asteroids extends Floater{
	private int myRotate;
	public Asteroids(){
		myRotate = (int)((Math.random()*-2)+4);
		corners = 4;
		xCorners = new int[] {-20, -20, 20, 20};
		yCorners = new int[] {20, -20, 20, -20};
		myColor = color(255,0,0);
		myCenterX = 100;
		myCenterY = 100;
		myDirectionX = (int)(Math.random()*-2)+1;
		myDirectionY = (int)(Math.random()*-2)+1;
		myPointDirection = 0;
	}
	public void move(){
		turn(myRotate);
		super.move();
	}
	public double getmyCenterX(){
		return myCenterX;
	}
	public double getmyCenterY(){
		return myCenterY;
	}
}