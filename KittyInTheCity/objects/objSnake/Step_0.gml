event_inherited();

if (global.pause) { 
	image_speed = 0;
	exit; 
}
image_speed = theSpeed;

if (image_alpha == 1) {
	x += xVelocity;
}