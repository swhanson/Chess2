// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_lose()
{
	room_goto(rm_gameover);
	audio_play_sound(snd_kingsfuneral, 10, true);
}