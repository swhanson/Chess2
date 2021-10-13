/// @description Insert description here
// You can write your code in this editor

md=256;

// Buffer size = difference of 64 from last pixel of collision mask + 1
var topBuffer = md;
var bottomBuffer = md;
var sideBuffer = md;




moveDecider = irandom(4);

// Graveyard
/* 
if ( abs(x-inst_friendlyking.x) < targetDistance &&
abs(y-inst_friendlyking.y) < targetDistance &&
x-inst_friendlyking.x > 0)
{
	moveDecider = 1; //left move.
}
else if ( abs(x-inst_friendlyking.x) < targetDistance &&
abs(x-inst_friendlyking.y) < targetDistance &&
x-inst_friendlyking.x < 0)
{
	moveDecider = 2; // right move.
}
else if (abs(y-inst_friendlyking.y) < targetDistance &&
abs(x-inst_friendlyking.x) < targetDistance &&
y-inst_friendlyking.y > 0)
{
	moveDecider = 3; // up move.
}
else if (abs(y-inst_friendlyking.y) < targetDistance  &&
abs(x-inst_friendlyking.x) > targetDistance &&
y-inst_friendlyking.y < 0)
{
	moveDecider = 4; // down move.
}
*/

switch(moveDecider){
	case 0:
		speed = 0; // do nothing
		break;
	case 1:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x-md,y,0,60,EaseInOutSine);;
		}
		break;
	case 2:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x+md,y,0,60,EaseInOutSine);
		}
		break;
	case 3:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_top+topBuffer) == 0) {
			TweenEasyMove(x,y,x,y-md,0,60,EaseInOutSine);
		}
		break;
	case 4:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x,y+md,0,60,EaseInOutSine);
		}
		break;
}
alarm[1] = room_speed;