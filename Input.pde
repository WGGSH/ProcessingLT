static final int MOUSE_NUM=3;
static final int MOUSE_LEFT=0;
static final int MOUSE_RIGHT=1;
static final int MOUSE_MIDDLE=2;
static final int KEY_NUM=256;

class Input{
	int[] mouse;
	boolean[] isMousePressed;
	int[] keyboard;
	boolean[] isKeyPressed;

	Input(){
		// マウスの初期化
		this.mouse=new int[MOUSE_NUM];
		for(int i=0;i<MOUSE_NUM;i++){
			this.mouse[i]=0;
		}
		
		this.isMousePressed=new boolean[MOUSE_NUM];
		for(int i=0;i<MOUSE_NUM;i++){
			this.isMousePressed[i]=false;
		}
		
		// キーボードの初期化
		this.keyboard=new int[KEY_NUM];
		for(int i=0;i<KEY_NUM;i++){
			this.keyboard[i]=0;
		}
		
		//
		this.isKeyPressed=new boolean[KEY_NUM];
		for(int i=0;i<KEY_NUM;i++){
			this.isKeyPressed[i]=false;
		}
	}
	
	// キーボードの入力情報を更新する
	private void keyUpdate(){
		for(int i=0;i<KEY_NUM;i++){
			if(this.isKeyPressed[i]==true){
				this.keyboard[i]++;
			}else{
				this.keyboard[i]=0;
			}
		}
	}
	
	// マウスの入力情報を更新する
	private void mouseUpdate(){
		for(int i=0;i<MOUSE_NUM;i++){
			if(this.isMousePressed[i]==true){
				this.mouse[i]++;
			}else{
				this.mouse[i]=0;
			}
		}
	}

	// 入力情報の更新
	public void update(){
		this.mouseUpdate();
		this.keyUpdate();
	}

	// マウスの入力状態の取得
	public int getMouse(int input){
		return this.mouse[input];
	}

	// キーボードの入力状態を取得
	public int getKey(int input){
		return this.keyboard[input];
	}

}

// マウスがクリックされた
void mousePressed(){
	if(mouseButton==LEFT){
		input.isMousePressed[MOUSE_LEFT]=true;
	} else if(mouseButton==RIGHT){
		input.isMousePressed[MOUSE_RIGHT]=true;
	} else if(mouseButton==CENTER){
		input.isMousePressed[MOUSE_MIDDLE]=true;
	}
}

void mouseReleased(){
	if(mouseButton==LEFT){
		input.isMousePressed[MOUSE_LEFT]=false;
	} else if(mouseButton==RIGHT){
		input.isMousePressed[MOUSE_RIGHT]=false;
	} else if(mouseButton==CENTER){
		input.isMousePressed[MOUSE_MIDDLE]=false;
	}
}

void keyPressed(){
	if(key!=CODED){
		input.isKeyPressed[key]=true;
	}
}

void keyReleased(){
	if(key!=CODED){
		input.isKeyPressed[key]=false;
	}
}
