if (instance_exists(obj_lojaj)){
	var cam = view_get_camera(0);

	x = camera_get_view_x(cam) + camera_get_view_width(cam) / 2;
	y = camera_get_view_y(cam) + camera_get_view_height(cam) /2;

	if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
		    esperando_impacto = true;
		}

		if (esperando_impacto && obj_ponteiro.impacto) {
	    
			if (global.dinheiro >= 200){
				global.capacidade += 1;
				global.dinheiro -= 200;
			}
		
		    instance_destroy();
		}
} else{
	instance_destroy();
}