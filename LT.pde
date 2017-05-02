class LT{
	int slideIndex; // 現在表示中のスライド
	ArrayList<Slide> slideList; // スライドリスト

	LT(){
		this.slideList=new ArrayList<Slide>();
		this.slideList.add(new Slide01(this,this.slideList));
		this.slideIndex=0;
	}

	public void setup(){
	}

	public void update(){
		this.slideList.get(this.slideIndex).update();


		this.capture();
	}

	private void capture(){
		if(input.getKey('p')==1){
			save(System.getProperty("user.home") + "/Desktop/SS.png");
		}
	}

}
