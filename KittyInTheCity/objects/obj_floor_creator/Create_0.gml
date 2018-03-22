//Call script that will draw the floor tiles, give tile object and room info as arugments
if(room == ApartmentRun){
	DrawFloor(objLvl1Floor, 64, 768, 10000, 0);
}
else if (room == CityStreets){
	DrawFloor(objLvl2TopFloor, 64, 768, 10000, 0);
}
else if (room == Sewer){
	DrawFloor(objWater, 64, 768, 10000, 0);
}
//For the forest level, multiple levels and amounts of flooring needs to be created
else if(room == Forest){
	DrawFloor(objLvl4TopFloor, 64, (768/2 + 64), 10000/3, 0);
	DrawFloor(objLvl4UnderFloor, 64, 768, 8780, 10000/3);
	DrawFloor(objLvl4TopFloor, 64, (768/2), 8604, 3682);
	DrawFloor(objLvl4TopFloor, 64, (768/2), 10000, 8778);
}
else if (room == FireEscape){
	DrawFloor(objLvl2TopFloor, 64, 5500, 15000, 0);
}