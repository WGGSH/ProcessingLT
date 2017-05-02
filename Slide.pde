abstract class Slide{
	LT lt;
	ArrayList<Slide> slideList;

	Slide(LT lt,ArrayList<Slide> slideList){
		this.lt=lt;
		this.slideList=slideList;
	}

	abstract public void setup();
	abstract public void update();

	abstract protected void draw2D();
	abstract protected void draw3D();
}
