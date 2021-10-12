/// @description Insert description here
// You can write your code in this editor

// Buffer size = difference of 64 from last pixel of collision mask + 1
var topBuffer = 15;
var bottomBuffer = 10;
var sideBuffer = 17;
randomize();
moveDecider = irandom(3);

if distance_to_object(obj_playerqueen) < 128
{
    direction = playerdirection = point_direction(x,y,obj_playerqueen.x,obj_playerqueen.y) -180
    speed = 2

} else {
    speed = 0 //This is assuming you want the enemy to stop when the player isn't near
}

alarm[1] = room_speed;