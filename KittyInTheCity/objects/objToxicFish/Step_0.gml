if (global.pause) { 
	image_speed = 0;
	exit; 
}
image_speed = theSpeed;
y += yVelocity;
yVelocity += 1;
if (y > startPosition) yVelocity = 0;
if (y < yprevious) image_yscale = 1;
if (y > yprevious) image_yscale = -1;