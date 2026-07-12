if (place_meeting(x,y,obj_player) && place_meeting(x,y,obj_arma) && global.pedido == "triangulo"){
	mostrar_texto = true;
	if (keyboard_check_pressed(ord("X"))){
		if (global.pedido == "triangulo" && obj_arma.estadoc == "frio" && obj_arma.image_index != 0 && obj_arma.image_index != 1){
			global.pedido = "";
			instance_destroy(obj_arma);
			global.dinheiro += 100;
		}
	}
} else{
	mostrar_texto = false;
}