// Respond to up and down keys

if (global.pause) {
	
	menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

	menuIndex += menuMove;
	if (menuIndex < 0) { menuIndex = numButtons-1; }
	if (menuIndex > numButtons-1) { menuIndex = 0; }
	lastSelected = menuIndex;
}