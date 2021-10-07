/// @description Follow Queen
// You can write your code in this editor

follow_target = noone;
if(room == rm_tutorplayer) 
{
	follow_target = inst_tutorial_playerqueen;
}
else
{
	follow_target = inst_playerqueen;
}
	follow_distance_x = random_range(100, 100);
	follow_distance_y = random_range(10, 100);

	if( current_second%10==0 )
	{
	follow_distance_x = random_range(10, 100);
	follow_distance_y = random_range(10, 100);
	}

	if (distance_to_object(obj_playerqueen)>50)
	{
		move_towards_point(follow_target.x-follow_distance_x,follow_target.y-follow_distance_y,1);
	}



