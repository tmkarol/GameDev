//Script used to programmatically draw floor of each level
var object = argument0; //object to be drawn
var size = argument1; //size of each object, used to correctly space object positions
var floorHeight = argument2; //offset for y position of object
var floorWidth = argument3; //limits drawing to the room width
var startingPoint = argument4; //where to begin drawing floor
for(var i = startingPoint; i < floorWidth; i += size){
	instance_create_layer(i,floorHeight - 64, obj_floor_creator.layer, object);
}