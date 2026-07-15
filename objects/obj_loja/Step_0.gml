if (place_meeting(x,y,obj_player)){
	mostrar_texto = true;
	if (keyboard_check_pressed(ord("X"))){
		if (!instance_exists(obj_lojaj)){
			instance_create_depth(x, y, -1000, obj_lojaj);
		}
	}
} else{
	mostrar_texto = false;
}