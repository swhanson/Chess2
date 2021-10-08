/// @description Insert description here
// You can write your code in this editor

if !isStopped
{
	y+=1
	counter+=1;
	if(counter >=64)
	{
		isStopped = true;
		alarm[0] = room_speed;
	}
}
else if(y>=1055) // 1055 is the bottom row of the board
{
	instance_create_layer(x,y,"lyr_pieces",obj_enemyqueen);
	instance_create_layer(inst_playerqueen.x, inst_playerqueen.y-128, "lyr_gui", obj_pawnevolve);
	
	instance_destroy(id);
}