int IMAGE_MAX=RESOURCE.values().length;
PImage[] images=new PImage[IMAGE_MAX];

PImage loadResource(RESOURCE number){
	int i=number.getNumber();
	if(images[i]==null){
		switch(number){
			case SLIDE00:images[i]=loadImage("slide/00.png");break;
			default:break;
		}
	}

	return images[i];
}

public enum RESOURCE{
	SLIDE00(0),
	;

	private int intValue;
	
	public static RESOURCE valueOf(final int anIntValue){
		for (RESOURCE d : values()) {
			if (d.getNumber() == anIntValue) {
				return d;
			}
		}
		return null;
	}

	private RESOURCE(final int id){
		this.intValue=id;
	}

	public int getNumber(){
		return this.intValue;
	}

}
