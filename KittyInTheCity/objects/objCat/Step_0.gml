if (global.pause) { 
	alarm[1]++;
	exit; }

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

// collisions with platforms
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

// animations
if (attacking) { sprite_index = sprCatScratch; }
else if (hissing) { sprite_index = sprCatHiss; }
else if (ducking) { sprite_index = sprCatDuck; }
else if (jumping) { sprite_index = sprCatJump; }
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

// stamina bar functionality: deplete stamina
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

// stamina bar functionality: walking/running/standing
if (walking && !running) {
	if (stamina <= maxStamina - 0.25) {
		stamina += 0.25;
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
	if (stamina <= maxStamina - 0.5) {
		stamina += 0.5;
	}
	else {
		stamina = maxStamina;
	}
}

// stamina bar scale
staminaBarXScale = stamina/maxStamina;

// stamina collectibles
instanceIDStaminaCollectible = instance_place(x, y, objStaminaParent);
if (instanceIDStaminaCollectible != noone) {
	if (global.music = true) {
			audio_play_sound(Pick_Up_Pizza, 10, false);	
		}
	instance_destroy(instanceIDStaminaCollectible);
	if (stamina <= maxStamina - 20) {
		stamina += 20;
	}
	else {
		stamina = maxStamina;
	}
}

// health bar functionality: depleted hearts and checkpoint
if (instance_exists(objCheckpoint)) {
	checkPointXPos = objCheckpoint.x;
	checkPointYPos = objCheckpoint.y;
	if (hearts == 0 && x >= checkPointXPos) {
		objEnemyParent.image_alpha = 1;
		x = checkPointXPos;
		y = checkPointYPos;
		hearts = 9;
	}
	else if (hearts == 0 && x < checkPointXPos) {
		hearts = 9;
		room_restart();
	}
}
else if (hearts == 0) {
	hearts = 9; // Reload lives
	stamina = maxStamina; // Reload stamina
	room_restart();
}

// health bar functionality: collisions with enemies
instanceIDEnemyCollision = instance_place(x, y, objEnemyParent);
instanceIDWaterCollision = instance_place(x, y, objCityWater);
if (!stunned && !attacking && !hissing) {
	if ((instanceIDEnemyCollision != noone && instanceIDEnemyCollision.image_alpha == 1) || instanceIDWaterCollision != noone) {
		instanceIDEnemyCollision = noone;
		instanceIDWaterCollision = noone;
		hearts--;
		stunned = true;
		// Play sound effect
		if (global.music = true) {
			audio_play_sound(sndHurt, 10, false);	
		}
		image_alpha = 0.5;
		// TODO add knock back animation
		if (alarm[1] < 0) {
			alarm[1] = 30;
		}
		else {
			alarm[1] = 30;
		}
	}
}

// health bar functionality: collision with sewer water
instanceIDWater = instance_place(x, y, objWater);
if (instanceIDWater != noone) {
	if (global.music = true) {
		audio_play_sound(sndDie, 10, false);	
	}
	hearts = 0;
	instanceIDWater = noone;
}

// health collectible
instanceIDHealthCollectible = instance_place(x, y, objHeart);
if (instanceIDHealthCollectible != noone) {
	if (global.music = true) {
			audio_play_sound(Pick_Up_Pizza, 10, false);	
		}
	instance_destroy(instanceIDHealthCollectible);
	if (hearts < 9) {
		hearts++;
	}
}

// scratching
if (stamina >= 25) {
	if (attacking) {
		// reduce stamina
		stamina -= 25;
	
		// detect enemy
		instanceIDEnemy = instance_place(x + 2, y, objEnemyParent);
		if (instanceIDEnemy != noone) {
			//instance_destroy(instanceIDEnemy);
			instanceIDEnemy.image_alpha = 0;
			// TODO possibly add hitpoints to enemy
		}
		instanceIDEnemy = noone;
		if(alarm[2] < 0){
		alarm[2] = 10;
		}	
	}
}

// hissing
if (stamina >= 40) {
	if (hissing) {
		// reduce stamina
		stamina -= 40;
	
		// detect enemy
		rightOrLeft = x + 10;  // facing right
		if (image_xscale != 1) {
			rightOrLeft = x - 10;  // facing left
		}
		instanceIDEnemy = instance_place(rightOrLeft, y, objEnemyParent);
		if (instanceIDEnemy != noone && instanceIDEnemy.image_alpha > 0) {
			instanceIDEnemy.image_alpha = 0.5;
		}
		instanceIDEnemy = noone;
		if(alarm[2] < 0){
		alarm[2] = 10;
		}
	}
}

// Cat dies if it goes off the left side of the screen
if (x < camera_get_view_x(view_camera[0])) {
	hearts = 9;
	stamina = maxStamina;
	if(instance_exists(objCheckpoint) && x >= objCheckpoint.x){
		x = objCheckpoint.x;
		y = objCheckpoint.y;
	}
	else{
		room_restart();
	}
}

// Cat dies if it goes behind the bottom of the screen
if (y > camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 80) {
	checkPointXPos = objCheckpoint.x;
	checkPointYPos = objCheckpoint.y;
	if (x >= checkPointXPos) {
		objAnimalControl.path_position = .75;
		objAnimalControl.alarm[2] = room_speed * 6;
		objAnimalControl.sprite_index = sprAnimalControlRun;
		x = checkPointXPos;
		y = checkPointYPos;
		stamina = maxStamina;
		hearts = 9;
	}
	else {
		hearts = 9;
		stamina = maxStamina;
		room_restart();
	}
}

// Stop cat from walking off right side of screen
if (x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 32) {
	x = x - 10;
}

// Stop cat from going off the top of the screen
if (y < camera_get_view_y(view_camera[0])) {
	y = y + 10;
}