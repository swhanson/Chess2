/// @description Insert description here
// You can write your code in this editor

// Buffer size = difference of 64 from last pixel of collision mask + 1
var topBuffer = 15;
var bottomBuffer = 10;
var sideBuffer = 17;

md=64;

moveDecider = 0;
multiplier = 1;
if ( abs(x-inst_friendlyking.x) < 128 && y-inst_friendlyking.y < 64)
{
	moveDecider = 1; // side to side move.
	multiplier = floor(inst_friendlyking.x/md);
	if(x-inst_friendlyking.x > 0)
	{
		multiplier *= -1;
	}
}
else if (abs(y-inst_friendlyking.y) < 128  && x-inst_friendlyking.x < 64)
{
	moveDecider = 2; // up down move.
	multiplier = floor(inst_friendlyking.y/md);
	if(y-inst_friendlyking.y > 0)
	{
		multiplier *= -1;
	}
}



switch(moveDecider){
	case 0:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			speed = 0; // do nothing
		}
		break;
	case 1:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			move_towards_point(x+md*multiplier,y,1);
		}
		break;
	case 2:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			move_towards_point(x,y+md*multiplier,1);
		}
		break;
}
alarm[1] = room_speed;