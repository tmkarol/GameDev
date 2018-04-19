if (global.pause) { 
	image_speed = 0;
	path_speed = 0; 
	alarm[2]++;
}
else {
	if (move){
		image_speed = theSpeed;
		path_speed = 10;
	}
}