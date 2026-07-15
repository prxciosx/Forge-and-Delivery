var cam = view_get_camera(0);

x = camera_get_view_x(cam) + camera_get_view_width(cam) / 2;
y = camera_get_view_y(cam) + camera_get_view_height(cam) / 2;

if (!exis1){
	instance_create_depth(0, 0, -1100,obj_pr1);
	exis1 = true;
}

if (!exis2){
	instance_create_depth(0, 0, -1100,obj_pr2);
	exis2 = true;
}

if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	    esperando_impacto = true;
	}

	if (esperando_impacto && obj_ponteiro.impacto) {
		instance_destroy();
	}