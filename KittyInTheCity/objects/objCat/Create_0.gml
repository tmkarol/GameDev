image_speed = 0;
image_index = 0;

direct = "right"

grav = 5;

xVelocity = 0;
yVelocity = 0;

running = false;
walkVelocity = 10;
runVelocity = 20;
doubleClick = 0;

jumping = false;
jumpVelocity = -40;

level = asset_get_index(room_get_name(room));
if (level == 10) {
	minBase = 5436;
}
else {
	minBase = 704;
}
y = minBase;
base = y;

ducking = false;

onPlatform = false;

hearts = 9;
stamina = 100;