//Call script that will draw the floor tiles, give tile object and room info as arugments
if(room == ApartmentRun){
	DrawFloor(objLvl1TopFloor, 64, 768, 10000);
}
else if (room == CityStreets){
	DrawFloor(objLvl2TopFloor, 64, 768, 10000);
}
else if (room == Sewer){
	DrawFloor(objWater, 64, 768, 10000);
}
else if(room == Forest){
	DrawFloor(objLvl4TopFloor, 64, 768, 10000);
}
else if (room == FireEscape){
	DrawFloor(objLvl5Floor, 64, 5500, 15000);
}