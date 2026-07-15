if (position_meeting(mouse_x,mouse_y,obj_botaop)){
	image_index = 1;
	
	if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	    esperando_impacto = true;
	}

	if (esperando_impacto && obj_ponteiro.impacto) {
	   room_goto(Room1);
	}

}else{
	image_index = 0;
}