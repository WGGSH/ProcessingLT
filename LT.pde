class LT{

	LT(){
	}

	public void setup(){
	}

	public void update(){


		this.capture();
	}

	private void capture(){
		if(input.getKey('p')==1){
			save(System.getProperty("user.home") + "/Desktop/SS.png");
		}
	}

}
