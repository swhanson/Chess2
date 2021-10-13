/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_whack, 10, false);
room_goto(rm_title);
with(inst_menumodel){
	x=203;
	y=71;
}
audio_stop_sound(snd_background_music);