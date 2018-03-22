/// @description Insert description here

if (global.pause) {
	// Fade out game
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	
	// Draw text
	draw_set_alpha(1);
	draw_set_font(fntPause);
	draw_set_halign(fa_center);
	draw_set_color(c_white);

	var i = 0;
	repeat(numButtons) {
	
		// Set text 
		draw_set_font(fntMenu);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		if (menuIndex == i) { // If it's selected, highlight it
			draw_set_color(c_yellow);
		}
		draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+buttonH*(i-1), button[i]);
		i++;
	}
}