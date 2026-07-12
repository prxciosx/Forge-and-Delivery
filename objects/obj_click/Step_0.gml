if (position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)){
	audio_play_sound(sou_bate,1,false);
	global.pontos += 1;
	instance_destroy();
}