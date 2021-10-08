// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_kill(toBeKilled)
{
instance_create_layer(toBeKilled.x,toBeKilled.y,"lyr_pieces",obj_explode);
switch(toBeKilled.object_index){
	case obj_bishop:
		pointObj = obj_pts300;
		break;
	case obj_enemyking:
		pointObj = obj_pts1000;
		break;
	case obj_enemyqueen:
		pointObj = obj_pts900;
		break;
	case obj_knight:
		pointObj = obj_pts300;
		break;
	case obj_pawn:
		pointObj = obj_pts100;
		break;
	case obj_rook:
		pointObj = obj_pts500;
		break;
}
instance_create_layer(toBeKilled.x-16,toBeKilled.y-32,"lyr_gui",toBeKilled.pointObj);
instance_destroy(toBeKilled);
}