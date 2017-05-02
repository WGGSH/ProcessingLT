class Font{
	static final int TITLE=0;
	ArrayList<PFont> fontList;
	Font(){
		this.fontList=new ArrayList<PFont>();
	}

	public void setup(){
		this.fontList.clear();
		this.fontList.add(createFont("migu-1m-regular",48));
	}

	public void setFont(int index){
		textFont(this.fontList.get(index));
	}

}
