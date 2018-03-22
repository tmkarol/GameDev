/// @description Draw the menu options

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