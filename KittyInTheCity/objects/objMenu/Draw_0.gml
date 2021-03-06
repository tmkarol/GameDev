/// @description Draw the menu options

// Draw the menu options
var i = 0;
repeat(numButtons) {
	
	// Set text 
	draw_set_font(fntMenu);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	if (menuIndex == i) { // If it's selected, highlight it
		draw_set_color(c_yellow);
	}
	
	draw_text(menuX, menuY + buttonH*i, button[i]);
	i++;
}

// Draw menu controls
draw_set_font(fntInstructions);
draw_set_color(c_dkgray);
draw_set_halign(fa_center);
draw_text(room_width/2, 30, "Use the arrow keys and enter to select");

// Draw the instructions
i = 0;
repeat(numControls) {
	draw_text(controlX, controlY + controlH*i, control[i]);
	i++;
}