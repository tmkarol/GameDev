levelProgress = 5;
if (file_exists("save.sav")) {
			var loadFile = file_text_open_read("save.sav");
			var loadedRoom = file_text_read_real(loadFile);
			file_text_close(loadFile);
			switch(loadedRoom){
				case 4:
					levelProgress = 1;
					break;
				case 6:
					levelProgress = 2;
					break;
				case 8:
					levelProgress = 3;
					break;
				case 10:
					levelProgress = 4;
					break;
				case 12:
					levelProgress = 5;
					break;
				default:
					levelProgress = 0;
			}
			
}


