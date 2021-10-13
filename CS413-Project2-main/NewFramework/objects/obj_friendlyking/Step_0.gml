/// @description Follow Queen
// You can write your code in this editor
var topBuffer = 15;
var bottomBuffer = 10;
var sideBuffer = 17;

notAtEdge = 
tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_top-topBuffer) == 0 && 
tilemap_get_at_pixel(tileMap, bbox_right-sideBuffer, bbox_top-topBuffer) == 0 &&
tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_bottom-bottomBuffer) == 0 &&
tilemap_get_at_pixel(tileMap, bbox_right-sideBuffer, bbox_bottom-bottomBuffer) == 0;


follow_target = noone;
if(room == rm_tutorplayer) 
{
	follow_target = inst_tutorial_playerqueen;
}
else 
{
	follow_target = inst_playerqueen;
}

if(!notAtEdge)
{
	move_towards_point(follow_target.x-irandom(20),follow_target.y-irandom(20),1);
}

	follow_distance_x = random_range(10, 100);
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



