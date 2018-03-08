jumping = false;
jumpVelocity = -40 + grav;
if(y <= other.y - 32){
//set cat's y position to be standing on platform
y = other.y - 32;
}
else{
	if(underground){
		y = objLvl4UnderFloor.y - 32;
	}
	else{
		y = objLvl4TopFloor.y - 32;
	}
}
