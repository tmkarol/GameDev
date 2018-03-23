// health bar
for (i = 0; i < hearts; i++) {
	draw_sprite_ext(sprHeart, 0, (30 * (i + 1)), 30, 0.60, 0.60, 0, c_white, .80);
}

// stamina bar
draw_sprite_ext(sprStaminaBar, 0, 30, 60, staminaBarXScale, 1, 0, c_white, .80);