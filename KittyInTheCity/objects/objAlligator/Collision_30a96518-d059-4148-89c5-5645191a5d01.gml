/// @description Insert description here
// You can write your code in this editor



// Cat attacking
if (objCat.sprite_index == sprCatHiss) {
	vel = 0;
	alarm[1] = 20;
}
if (objCat.sprite_index == sprCatScratch) {
	instance_destroy();
}