if (place_meeting(x,y,obj_player)){
	mostrar_texto = true;
	if (keyboard_check_pressed(ord("X"))){
		room_goto(global.porta);
	}
} else{
	mostrar_texto = false;
}