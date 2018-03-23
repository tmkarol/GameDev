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
			if (!(instanceID.y + 126 > minBase)) {
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
		base = minBase;
	}
}

// Sprite changes
if (attacking) {
	sprite_index = sprCatScratch;
	n--;
	if (n == 0) {
		attacking = false;
		n = spriteduration;
	}
}
else if (hissing) {
	sprite_index = sprCatHiss;
	n--;
	if (n == 0) {
		hissing = false;
		n = spriteduration;
	}
}
else if (ducking) sprite_index = sprCatDuck;
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

// stamina bar
if (walking && !running) {
	if (stamina < maxStamina) {
		stamina++;
	}
}
else if (!walking && running) {
	if (stamina >= 3) {
		stamina -= 3;
	}
	else {
		stamina = 0;
	}
}
else if (!walking && !running) {
	if (stamina <= maxStamina - 5) {
		stamina += 5;
	}
	else {
		stamina = maxStamina;
	}
}

// stamina collectibles
if (place_meeting(x, y, objStaminaParent)) {
	
}

if (stamina == 0) {
	running = false;
	walking = true;
	if (image_xscale == 1) {
		xVelocity = walkVelocity;
	}
	else {
		xVelocity = -walkVelocity;
	}
}