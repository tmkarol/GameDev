event_inherited();

if (global.pause) { 
	image_speed = 0;
	alarm[0] = alarmtime;
	exit; 
}
image_speed = theSpeed;
if (image_alpha == 1) {
	y += yVelocity;
}
yVelocity += 1;
if (y > startPosition) yVelocity = 0;
if (y < yprevious) image_yscale = 1;
if (y > yprevious) image_yscale = -1;
alarmtime = alarm[0];
