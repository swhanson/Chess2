/// @description Insert description here
// You can write your code in this editor

avoid_distance_x=100;
avoid_distance_y=100;
if (distance_to_object(obj_playerqueen)>50)
{
		move_towards_point(inst_playerqueen.x+avoid_distance_x,inst_playerqueen.y+avoid_distance_y,1);
}