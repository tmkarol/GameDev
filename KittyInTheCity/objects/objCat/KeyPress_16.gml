if (room != ApartmentRun && room != FireEscape) {
	if (stamina >= 40) {
		hissing = true;
		if (global.music = true) {
			audio_play_sound(sndHiss, 11, false);
		}
	}
}