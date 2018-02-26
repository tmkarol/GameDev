/// @description Insert description here
// You can write your code in this editor
if (!attack) counter = indexTimer/2;
if (attack){
	if (lastDirection == "right") sprite_index = attackRight;
	if (lastDirection == "left") sprite_index = attackLeft;
	if (counter == 0) attack = false;
	counter--;
}
else {
if (velocity_y > 0) {
	if (lastDirection == "right") sprite_index = jumpingRight;
	if (lastDirection == "left") sprite_index = jumpingLeft;
}
if (velocity_y < 0) {
	if (lastDirection == "right") sprite_index = fallingRight;
	if (lastDirection == "left") sprite_index = fallingLeft;
}
if (velocity_x == 0) {
	if (lastDirection == "right") sprite_index = idleRight;
	if (lastDirection == "left") sprite_index = idleLeft;
}
}