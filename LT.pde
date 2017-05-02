class LT{
	int slideIndex; // 現在表示中のスライド
	ArrayList<Slide> slideList; // スライドリスト

	Font font; // フォントクラス

	LT(){
		this.slideList=new ArrayList<Slide>();
		this.slideList.add(new Slide01(this,this.slideList));
		this.slideIndex=0;

		this.font=new Font();
	}

	public void setup(){
		this.font.setup();
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
