if (global.pause) { 
	image_speed = 0;
	exit; 
}
image_speed = theSpeed;
x += xVelocity;
if (x < xprevious) image_xscale = 1;
if (x > xprevious) image_xscale = -1;