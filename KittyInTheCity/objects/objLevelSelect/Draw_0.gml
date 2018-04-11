/// @description Draw the menu options

var i = 0;
repeat(numButtons) {
	
	// Set text 
	draw_set_font(fntMenu);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	if (menuIndex == i) { // If it's selected, highlight it
		draw_set_color(c_yellow);
		if(menuIndex == 1 && objLevelProgress.levelProgress < 1){
			draw_set_color(c_dkgray);
		}
		else if(menuIndex == 2 && objLevelProgress.levelProgress < 2){
			draw_set_color(c_dkgray);
		}
		else if(menuIndex == 3 && objLevelProgress.levelProgress < 3){
			draw_set_color(c_dkgray);
		}
		else if(menuIndex == 4 && objLevelProgress.levelProgress < 4){
			draw_set_color(c_dkgray);
		}
	}
	
	draw_text(menuX, menuY + buttonH*i, button[i]);
	i++;
}