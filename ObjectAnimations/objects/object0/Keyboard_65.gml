/// @description Insert description here
// You can write your code in this editor
lastDirection = "left"
if (indexCounter == 0){indexCounter = indexTimer}
if (indexCounter > indexTimer/2){
	sprite_index = walkingLeft;
}
else if (indexCounter < indexTimer/2){
	sprite_index = idleLeft;
}
indexCounter--;