/// @description Insert description here
// You can write your code in this editor

if(room == ApartmentRun && objLevelProgress.levelProgress < 1){
	++objLevelProgress.levelProgress;
}
else if(room == CityStreets && objLevelProgress.levelProgress < 2){
	++objLevelProgress.levelProgress;
}
else if(room == Sewer && objLevelProgress.levelProgress < 3){
	++objLevelProgress.levelProgress;
}
else if(room == Forest && objLevelProgress.levelProgress < 4){
	++objLevelProgress.levelProgress;
}
else if(room ==FireEscape && objLevelProgress.levelProgress < 5){
	++objLevelProgress.levelProgress;
}

room_goto_next();