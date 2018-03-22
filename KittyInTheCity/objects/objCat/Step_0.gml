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
	if (place_meeting(x, y + yVelocity, objPlatformParent)) {
		// above platform
		if (y <= objPlatformParent.y) {
			onPlatform = true;
			jumping = false;
			yVelocity = 0;
			y = objPlatformParent.y;
			base = y;
		}
		// under platform
		else {
			yVelocity = 0;
			y = objPlatformParent.y + 126;
		}
	}
}
else {
	if (!place_meeting(x, y + 1, objPlatformParent)) {
		onPlatform = false;
		jumping = true;
		base = minBase;
	}
}

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



