if (position_meeting(mouse_x,mouse_y,obj_botaop)){
	image_index = 1;
	if (mouse_check_button_pressed(mb_left)){
		room_goto(Room1);
	}
}else{
	image_index = 0;
}