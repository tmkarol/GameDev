/// @description Respond to button selected

switch(menuIndex) {
	case 0:
		// Start a new game
		room_goto(rmCutscene0);
		break;
	case 1:
		// Load game
		if (file_exists("save.sav")) {
			var loadFile = file_text_open_read("save.sav");
			var loadedRoom = file_text_read_real(loadFile);
			file_text_close(loadFile);
			room_goto(loadedRoom);
		}
		// Start new game if no save file exists
		else {
			room_goto(rmCutscene0);
		}
		break;
	case 2:
		// Go to level select
		room_goto(rmLevelSelect);
		break;
	case 3:
		// TODO: Add code to turn sound on or off
		break;
	case 4:
		game_end();
		break;
}