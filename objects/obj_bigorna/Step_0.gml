if (place_meeting(x,y,obj_arma) && obj_arma.estadoc == "quente" && obj_arma.estado == ""){
	mostrar_texto = true;
	if (keyboard_check(ord("X"))){
		obj_minigame.mostrar = true;
	}
} else{
	mostrar_texto = false;
}