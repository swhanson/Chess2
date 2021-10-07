/// @description Insert description here
// You can write your code in this editor

// Buffer size = difference of 64 from last pixel of collision mask + 1
var topBuffer = 15;
var bottomBuffer = 10;
var sideBuffer = 17;
randomize();
moveDecider = irandom(3);
switch(moveDecider){
	case 0:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x-64,y-64,0,60,EaseInOutSine);
		}
		break;
	case 1:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x+64,y-64,0,60,EaseInOutSine);
		}
		break;
	case 2:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x-64,y+64,0,60,EaseInOutSine);
		}
		break;
	case 3:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x+64,y+64,0,60,EaseInOutSine);
		}
		break;
	
}
alarm[1] = room_speed;