class LT{
	int slideIndex; // 現在表示中のスライド
	ArrayList<Slide> slideList; // スライドリスト

	Font font; // フォントクラス

	LT(){
		this.slideList=new ArrayList<Slide>();
		this.slideList.add(new Slide00(this,this.slideList));
		this.slideList.add(new Slide01(this,this.slideList));
		this.slideIndex=0;

		this.font=new Font();
	}

	public void setup(){
		this.font.setup();
	}

	public void update(){
		this.slideList.get(this.slideIndex).update();
		println(this.slideList.get(this.slideIndex).getClass());
		this.slideMove();
		this.capture();
	}

	private void capture(){
		if(input.getKey('p')==1){
			save(System.getProperty("user.home") + "/Desktop/SS.png");
		}
	}
	
	// 表示中のスライドを変更する
	private void slideMove(){
		// Z,BackSpaceで戻す
		// X,Enter,Space, 左クリック で進める
		boolean change=false;
		if(input.getMouse(MOUSE_LEFT)==1 || input.getKey('x')==1 ||
			 input.getKey(ENTER)==1){
			this.slideIndex++;
			change=true;
		}else if(input.getKey('z')==1 || input.getKey(BACKSPACE)==1){
			this.slideIndex--;
			change=true;
		}

		if(this.slideIndex==-1){
			this.slideIndex=0;
			change=false;
		}else if(this.slideIndex==this.slideList.size()){
			this.slideIndex=this.slideList.size()-1;
			change=false;
		}

		if(change){
			this.slideList.get(this.slideIndex).setup();
		}
	}

}
