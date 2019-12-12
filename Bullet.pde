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
	 public void setmyCenterX(int X){
        myCenterX = X;
    }
    public void setmyCenterY(int Y){
        myCenterY = Y;
    }
    public void setmyDirectionX(int X){
        myDirectionX = X;
    }
    public void setmyDirectionY(int Y){
        myDirectionY = Y;
    }
    public void setmyPointDirection(int X){
        myPointDirection = X;
    }
    public double getmyCenterX(){
        return myCenterX;
    }
    public double getmyCenterY(){
        return myCenterY;
    }
    public double getmyPointDirection(){
        return myPointDirection;
    }
    public double getmyDirectionX(){
        return myDirectionX;
    }
    public double getmyDirectionY(){
        return myDirectionY;
    }
    public void move(){
    	myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;   
    }
}