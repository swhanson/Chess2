/// @description Insert description here
// You can write your code in this editor

follow_distance_x = random_range(10, 100);
follow_distance_y = random_range(10, 100);

if( current_second%10==0 )
{
follow_distance_x = random_range(10, 100);
follow_distance_y = random_range(10, 100);
}

if (distance_to_object(obj_player)>50)
{
	move_towards_point(inst_player.x-follow_distance_x,inst_player.y-follow_distance_y,1);
}

