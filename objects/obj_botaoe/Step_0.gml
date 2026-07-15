if (position_meeting(mouse_x,mouse_y,obj_botaoe)){
	image_index = 1;
	
	if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	    esperando_impacto = true;
	}

	if (esperando_impacto && obj_ponteiro.impacto) {
	   game_end();
	}
	
}else{
	image_index = 0;
}