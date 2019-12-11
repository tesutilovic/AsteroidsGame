class Spaceship extends Floater
{   
    public Spaceship() {
    	myColor=color(255);
    	myCenterX=300;
    	myCenterY=300;
    	myDirectionX=0;
    	myDirectionY=0;
    	corners = 4;
    	xCorners = new int[] {-8, 16, -8, -2};
    	yCorners = new int[] {-8, 0, 8, 0};
        myPointDirection = 0;
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
}
