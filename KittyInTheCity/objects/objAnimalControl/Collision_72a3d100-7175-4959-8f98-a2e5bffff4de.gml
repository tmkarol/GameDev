/// @description Restart level if cat dies

checkPointXPos = objCheckpoint.x;
checkPointYPos = objCheckpoint.y;
if (objCat.x >= checkPointXPos) {
	path_position = .75;
	alarm[2] = room_speed * 6;
	sprite_index = sprAnimalControlRun;
	objCat.x = checkPointXPos;
	objCat.y = checkPointYPos;
	objCat.stamina = objCat.maxStamina;
	objCat.hearts = 9;
}
else {
	objCat.hearts = 9;
	room_restart();
}