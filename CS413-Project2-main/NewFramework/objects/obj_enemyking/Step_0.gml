/// @description Insert description here
// You can write your code in this editor

// Buffer size = difference of 64 from last pixel of collision mask + 1
var topBuffer = 15;
var bottomBuffer = 10;
var sideBuffer = 17;


notAtEdge = 
tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_top-topBuffer) == 0 && 
tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_top-topBuffer) == 0 &&
tilemap_get_at_pixel(tileMap, bbox_left-sideBuffer, bbox_bottom+bottomBuffer) == 0 &&
tilemap_get_at_pixel(tileMap, bbox_right+sideBuffer, bbox_bottom+bottomBuffer) == 0;

if (distance_to_object(obj_playerqueen) < 128 && notAtEdge)
{
    direction = point_direction(x,y,inst_playerqueen.x,inst_playerqueen.y)-180
    speed = 1

} else {
    speed = 0.01 // he can crawl but he can't get away.
}
