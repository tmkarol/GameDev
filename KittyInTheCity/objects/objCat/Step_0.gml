if (global.pause) { exit; }

// update x position
x = x + xVelocity;

// update y position
if (jumping) {
	y = y + yVelocity;
	yVelocity = yVelocity + grav;
	if (y >= base) {
		jumping = false;
		yVelocity = 0;
		y = base;
	}
}

// collision with platform
if (!onPlatform) {
	instanceID = instance_place(x, y + yVelocity, objPlatformParent);
	if (instanceID != noone) {
		// above platform
		if (y <= instanceID.y) {
			onPlatform = true;
			jumping = false;
			yVelocity = 0;
			y = instanceID.y;
			base = y;
		}
		// under platform
		else {
			yVelocity = 0;
			if (!(instanceID.y + 126 > lastBase)) {
				y = instanceID.y + 126;
			}
		}
	}
	if (place_meeting(x + xVelocity, y, objPlatformParent)) {
		if (!onPlatform) {
			x -= xVelocity;
			xVelocity = 0;
		}
	}
}
else {
	// drop from platform
	if (!place_meeting(x, y + 1, objPlatformParent)) {
		onPlatform = false;
		jumping = true;
		base = lastBase;
	}
}
/*
// drop from floor
if (!place_meeting(x, y + 1, objFloorParent)) {
		jumping = true;
		base = lastBase;
}*/

// jumping and onPlatform testing
if (jumping) {
	image_index = 1;
}
else if (onPlatform) {
	image_index = 2;
}
else {
	image_index = 0;
}

// Sprite changes 

if (ducking) sprite_index = sprCatDuck;
else if (jumping) sprite_index = sprCatJump;
else {
	if (xVelocity == 0) {
			sprite_index = sprCatStandd;
		}
	else if (running) {
		if (sprite_index != sprCatRun) {
				sprite_index = sprCatRun;
			}
		}
	else {
		if (sprite_index != sprCatWalk) {
				sprite_index = sprCatWalk;
			}
		}
}
if (x < xprevious) image_xscale = -1;
if (x > xprevious) image_xscale = 1;



