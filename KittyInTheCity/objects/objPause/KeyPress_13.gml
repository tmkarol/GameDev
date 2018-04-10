/// @description Insert description here

if (global.pause) {
	
	switch(menuIndex) {
		case 0:
			// Unpause game
			global.pause = 0;
			break;
		case 1:
			// Save game room
			if (file_exists("save.sav")) {
				file_delete("save.sav");
			}
			var SaveFile = file_text_open_write("save.sav");
			var SavedRoom = room;
			file_text_write_real(SaveFile, SavedRoom);
			file_text_close(SaveFile);
			// Save number of lives		
			if (file_exists("lives2.sav")) {
				file_delete("lives2.sav");
			}
			var SaveFile = file_text_open_write("lives2.sav");
			file_text_write_real(SaveFile, objCat.hearts);
			file_text_close(SaveFile);
			break;
		case 2:
			// Return to main menu
			room_goto(rmMainMenu);
			break;
	}
	
}