Input input;
LT lt;

void setup(){
	//fullScreen(P3D);
	size(600,600,P3D);

	input=new Input();
	lt=new LT();
	lt.setup();
}

void draw(){
	background(0);
	input.update();
	lt.update();
}
