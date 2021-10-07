// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_kill(toBeKilled)
{
instance_create_layer(toBeKilled.x,toBeKilled.y,"lyr_pieces",obj_explode);
instance_destroy(toBeKilled);
}