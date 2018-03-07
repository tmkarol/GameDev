//Script used to programmatically draw floor of each level
var object = argument0; //object to be drawn
var size = argument1; //size of each object, used to correctly space object positions
var roomHeight = argument2; //offset for y position of object
var roomWidth = argument3; //limits drawing to the room width

for(var i = 0; i < roomWidth; i += size){
instance_create_layer(i,roomHeight - 64,obj_floor_creator.layer, object);
}