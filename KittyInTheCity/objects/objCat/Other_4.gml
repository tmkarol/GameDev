/// @description Load number of lives

if (global.load = true) {
	if (file_exists("lives2.sav")) {
		var loadFile = file_text_open_read("lives2.sav");
		var loadedLives = file_text_read_real(loadFile);
		file_text_close(loadFile);
		hearts = loadedLives;
	}
	else {
		hearts = 9;
	}	
	global.load = false; 
}
else if (global.new = true) {
	hearts = 9;
	global.new = false;
}
else {
	if (file_exists("lives.sav")) {
		var loadFile = file_text_open_read("lives.sav");
		var loadedLives = file_text_read_real(loadFile);
		file_text_close(loadFile);
		hearts = loadedLives;
	}
	else {
		hearts = 9;
	}
}