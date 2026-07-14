if (place_meeting(x,y,obj_player) && !place_meeting(x,y,obj_porta)&& keyboard_check_pressed(ord("X"))){
	carregando = !carregando;
}

if (carregando){
	x = obj_player.x + sign(obj_player.image_xscale) * 50;
	y = obj_player.y - 40;
}

switch (estado){
	case "espada":
		image_index = 2;
	break;
	case "marreta":
		image_index = 3;
	break;
	case "machado":
		image_index = 4;
	break;
	default:
		image_index = 0;
	break;
}

switch (estadoc){
	case "frio":
	if (image_index < 2){
		image_index = 0;
	} else{
		image_blend = c_white;
	}
	
	break;
	case "quente":
	if (image_index < 2){
		image_index = 1;
	} else{		
		image_blend = make_colour_rgb(255, 0,0);
	}
	break;
}	

switch (pedido){
    case 0:
        global.pedido = "pontudo";
    break;

    case 1:
        global.pedido = "ovni";
    break;

    case 2:
        global.pedido = "ovo";
    break;

    case 3:
        global.pedido = "triangulo";
    break;
}
		