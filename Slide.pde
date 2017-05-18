abstract class Slide{
	LT lt;
	ArrayList<Slide> slideList;
	PImage backImage;

	Slide(LT lt,ArrayList<Slide> slideList){
		this.lt=lt;
		this.slideList=slideList;
	}

	abstract public void setup();
	public void update(){
		this.drawBackground();
	}

	abstract protected void draw2D();
	abstract protected void draw3D();

	void drawBackground(){
		noStroke();
		beginShape();
		texture(this.backImage);
		vertex(0,0,0,0);
		vertex(width,0,this.backImage.width,0);
		vertex(width,height,this.backImage.width,this.backImage.height);
		vertex(0,height,0,this.backImage.height);
		endShape();
	}
}
