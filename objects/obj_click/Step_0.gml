if (obj_minigame.mostrar){
	if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	    esperando_impacto = true;
	}

	if (esperando_impacto && obj_ponteiro.impacto) {
	    audio_play_sound(sou_bate,1,false);
	    global.pontos += 1;
	    instance_destroy();
	}
} else{
	instance_destroy();
}