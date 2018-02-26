/// @description Insert description here
// You can write your code in this editor
lastDirection = "right"
if (indexCounter == 0){indexCounter = indexTimer}
if (indexCounter > indexTimer/2){
	sprite_index = walkingRight
}
else if (indexCounter < indexTimer/2){
	sprite_index = idleRight;
}
indexCounter--;