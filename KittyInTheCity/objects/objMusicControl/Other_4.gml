/// @description 

// Stop previous music
audio_stop_all();

// Play new music, if applicable
if (global.music = true) {
	if (room == rmMainMenu || room == rmLevelSelect) {
		audio_play_sound(sndMenuMusic, 10, true);
	}
	else if (room == FireEscape) {
		audio_play_sound(sndMeow, 10, false);
		audio_play_sound(sndBossMusic, 10, true);
	}
	else if(room == ApartmentRun){
		audio_play_sound(sndMeow, 10, false);
		audio_play_sound(Times_Ticking, 8, true);
	}
	else if (room == Sewer) {
		audio_play_sound(sndMeow, 10, false);
		audio_play_sound(Direction_by_defGames, 10, true);
	}
	else if( room == Forest){
		audio_play_sound(sndMeow, 10, false);
		audio_play_sound(Smooth_Pixels, 10, true);
	}
	else if( room == CityStreets){
		audio_play_sound(sndMeow, 10, false);
		audio_play_sound(Just_Survive, 10, true);
	}
}