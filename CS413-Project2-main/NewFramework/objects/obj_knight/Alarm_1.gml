/// @description Insert description here
// You can write your code in this editor
var topBuffer = 3+128;
var bottomBuffer = 10+128;
var sideBuffer = 17+128;
randomize();
moveDecider = irandom(7);
switch(moveDecider) {
	case 0:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x-128,y-64,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
	case 1:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x-64,y-128,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
	case 2:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x+64,y-128,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
	case 3:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_top-topBuffer) == 0) {
			TweenEasyMove(x,y,x+128,y-64,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
	case 4:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x-128,y+64,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
	case 5:
		if(tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x-64,y+128,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
	case 6:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x+128,y+64,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
	case 7:
		if(tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0) {
			TweenEasyMove(x,y,x+64,y+128,0,room_speed,EaseInOutSine);
			image_alpha = 0.6;
			isVulnerable = false;
		}
		break;
}

alarm[2] = room_speed;