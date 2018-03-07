jumping = false;
jumpVelocity = -40 + grav;
if(y <= other.y - 21){
//set cat's y position to be standing on platform
y = other.y - 21;
}
else{
	y = objLvl2TopFloor.y - 32;
}

