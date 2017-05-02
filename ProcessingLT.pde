Input input;

void setup(){
	//fullScreen(P3D);
	size(600,600,P3D);

	input=new Input();
}

void draw(){
	input.update();
	background(0);
}
