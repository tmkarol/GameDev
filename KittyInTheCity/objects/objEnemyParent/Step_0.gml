if(global.pause){
	alarm[11]++;
	
}
if (image_alpha == 0.5 && alarm[11] < 0) {
	alarm[11] = 40;
}