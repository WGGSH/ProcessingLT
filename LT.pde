class LT{
	private Slide slide;

	LT(){
		slide=new Slide01();
	}

	public void setup(){
	}

	public void update(){
		slide.update();


		this.capture();
	}

	private void capture(){
		if(input.getKey('p')==1){
			save(System.getProperty("user.home") + "/Desktop/SS.png");
		}
	}

}
