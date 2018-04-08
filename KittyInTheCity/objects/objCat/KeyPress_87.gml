if (!jumping) {
	onPlatform = false;
	jumping = true;
	base = minBase;
	yVelocity = jumpVelocity;
	if (global.music = true) {
		audio_play_sound(sndJump, 11, false);
	}
}