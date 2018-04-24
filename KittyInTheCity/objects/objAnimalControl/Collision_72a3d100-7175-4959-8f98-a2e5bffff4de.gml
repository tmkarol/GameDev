/// @description Restart level if cat dies
if (instance_exists(objCheckpoint) && path_position > 0.75) {
	path_position = 0.75;
}
objCat.hearts = 0;