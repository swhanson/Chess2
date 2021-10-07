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
	
	instance_destroy(id);
}