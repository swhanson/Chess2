/// @description Insert description here
// You can write your code in this editor

// Buffer size = difference of 64 from last pixel of collision mask + 1
var topBuffer = 15;
var bottomBuffer = 10;
var sideBuffer = 17;

md=48;

moveDecider = 0;
multiplier = 1;
if (x-inst_friendlyking.x < 200 && y-inst_friendlyking.y < 64)
{
	moveDecider = 1; // side to side move.
	multiplier = floor(inst_friendlyking.x/64);
}
else if (y-inst_friendlyking.y < 200 && x-inst_friendlyking.x < 64)
{
	moveDecider = 2; // up down move.
	multiplier = floor(inst_friendlyking.y/64);
}



switch(moveDecider){
	case 0:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x,y,0,0,EaseInOutSine);
		}
		break;
	case 1:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,md*multiplier,y,0,60,EaseInOutSine);
		}
		break;
	case 2:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x,md*multiplier,0,60,EaseInOutSine);
		}
		break;
}
alarm[1] = room_speed;