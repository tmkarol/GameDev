jumping = false;
jumpVelocity = -40 + grav;
if(y <= other.y - 32){
//set cat's y position to be standing on platform
y = other.y - 32;
}
else{
	y = objWater.y - 32;
}
