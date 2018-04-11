event_inherited();

if (global.pause) { 
	image_speed = 0;
	exit; 
}
image_speed = theSpeed;

if (image_alpha != 1) {
	image_speed = 0;
}
else {
	x += xVelocity;
}

if (x < xprevious) image_xscale = 1;
if (x > xprevious) image_xscale = -1;