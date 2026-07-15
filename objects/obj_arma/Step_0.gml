if (
    place_meeting(x,y,obj_player)
    && !place_meeting(x,y,obj_bigorna)
    && !place_meeting(x,y,obj_porta)
    && keyboard_check_pressed(ord("X"))
	&& !place_meeting(x,y,obj_casteloa)
	&& !place_meeting(x,y,obj_casteloo)
	&& !place_meeting(x,y,obj_castelop)
	&& !place_meeting(x,y,obj_castelot)
)
{
    if (!carregando && global.arma_mao == noone)
    {
        carregando = true;
        global.arma_mao = id;
    }
    else if (carregando)
    {
        carregando = false;
        global.arma_mao = noone;
    }
}

if (place_meeting(x,y,obj_forja) && estadoc == "frio"){
	audio_play_sound(sou_fogo,1,false);
	estadoc = "quente";
}

if (place_meeting(x,y,obj_balde) && estadoc == "quente"){
	audio_play_sound(sou_agua,1,false);
	estadoc = "frio";
}

if (global.pontos>3 && place_meeting(x, y, obj_bigorna)){
		var indice = irandom_range(1,3);	
		switch (indice){
			case 1:
				estado = "espada";
			break;
			case 2:
				estado = "marreta";
			break;
			case 3:
				estado = "machado";
			break;
		}
		obj_minigame.mostrar = false	}

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
if (global.forja){
	destino = global.pedido;
}