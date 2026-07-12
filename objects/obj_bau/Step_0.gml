if (place_meeting(x,y,obj_player)){
	mostrar_texto = true;
	if (keyboard_check_pressed(ord("X"))){
		image_index = 1;
		if (!instance_exists(obj_arma)){
			instance_create_depth(obj_player.x, obj_player.y, -1 ,obj_arma);
		}
	} 
} else{
	mostrar_texto = false;
	image_index = 0;
}