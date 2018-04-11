image_speed = 1;
image_index = 0;

grav = 5;

xVelocity = 0;
yVelocity = 0;

walking = false;
running = false;
jumping = false;
ducking = false;

walkVelocity = 10;
runVelocity = 20;
jumpVelocity = -40;
doubleClick = 0;

level = asset_get_index(room_get_name(room));
if (level == 10) {
	minBase = 5436;
}
else {
	minBase = 704;
}
base = y;

onPlatform = false;

maxStamina = 100;
stamina = maxStamina;

staminaBarXScale = 1;

stunned = false;

attacking = false;
hissing = false;