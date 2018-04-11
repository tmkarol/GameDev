/// @description Respond to button selected

switch(menuIndex) {
	case 0:
		// Go to level 1
		room_goto(ApartmentRun);
		break;
	case 1:
		// Go to level 2
		if(objLevelProgress.levelProgress >= 1){
			room_goto(CityStreets);
		}
		break;
	case 2:
		// Go to level 3
		if(objLevelProgress.levelProgress >= 2){
			room_goto(Sewer);
		}
		break;
	case 3:
		// Go to level 4
		if(objLevelProgress.levelProgress >= 3){
			room_goto(Forest);
		}
		break;
	case 4:
		// Go to level 5
		if(objLevelProgress.levelProgress >= 4){
			room_goto(FireEscape);
		}
		break;
	case 5:
		// Go back to main menu
			room_goto(rmMainMenu);
		break;
}