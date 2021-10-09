/// @description Insert description here
// You can write your code in this editor




// Buffer size = difference of 64 from last pixel of collision mask + 1
var topBuffer = 15;
var bottomBuffer = 10;
var sideBuffer = 17;

var md = 128 // move distance var name is short to avoid cluttering beloew functions
var mt = 180 // move time

if(distance_to_object(obj_friendlyking) > 200)
{
randomize();
moveDecider = irandom(7);
switch(moveDecider){
	case 0:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x-md,y-md,0,mt,EaseInOutSine);
		}
		break;
	case 1:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x+md,y-md,0,mt,EaseInOutSine);
		}
		break;
	case 2:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x-md,y+md,0,mt,EaseInOutSine);
		}
		break;
	case 3:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x+md,y+md,0,mt,EaseInOutSine);
		}
		break;
	case 4:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x-md,y,0,mt,EaseInOutSine);
		}
		break;
	case 5:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x+md,y,0,60,EaseInOutSine);
		}
		break;
	case 6:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x,y-md,0,60,EaseInOutSine);
		}
		break;
	case 7:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x,y+md,0,60,EaseInOutSine);
		}
		break;
}
}
else
{
	move_towards_point(obj_friendlyking.x,obj_friendlyking.y,2);
}
alarm[1] = room_speed;