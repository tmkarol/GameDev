/// @description Respond to button selected

switch(menuIndex) {
	case 0:
		// Start a new game
		global.load = false;
		if(file_exists("save.sav")){
			file_delete("save.sav");
		}
		objLevelProgress.levelProgress = 0;
		global.new = true;
		room_goto(rmCutscene0);
		break;
	case 1:
		// Load game
		global.load = true;
		global.new = false;
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
		global.load = false;
		global.new = true;
		room_goto(rmLevelSelect);
		break;
	case 3:
		// Turn sound on
		if (global.music = false) {
			global.music = true;
			audio_play_sound(sndMenuMusic, 10, true);
		}
		// Turn sound off
		else if (global.music = true) {
			global.music = false;
			audio_pause_sound(sndMenuMusic);
		}
		break;
	case 4:
		game_end();
		break;
}