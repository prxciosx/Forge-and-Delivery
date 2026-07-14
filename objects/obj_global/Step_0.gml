if (instance_exists(obj_player)){
	
	show_debug_message(global.pedido);
	
	if (global.pontos>3){
		var indice = irandom_range(1,3);	
		switch (indice){
			case 1:
				obj_arma.estado = "espada"
			break;
			case 2:
				obj_arma.estado = "marreta"
			break;
			case 3:
				obj_arma.estado = "machado"
			break;
		}
		obj_minigame.mostrar = false	}
	if (instance_exists(obj_minigame)){
		global.mostrar = obj_minigame.mostrar;
	} else{
		global.mostrar = false;
	}
	
	cam = view_camera[0];


	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);

	if (obj_player.x < cam_x + margem_x){
	    cam_x = obj_player.x - margem_x;
	}

	if (obj_player.x > cam_x + cam_w - margem_x){
	    cam_x = obj_player.x - (cam_w - margem_x);
	}

	if (obj_player.y < cam_y + margem_y){
	    cam_y = obj_player.y - margem_y;
	}

	if (obj_player.y > cam_y + cam_h - margem_y){
	    cam_y = obj_player.y - (cam_h - margem_y);
	}

	camera_set_view_pos(cam, lerp(camera_get_view_x(cam), cam_x, 0.1), lerp(camera_get_view_y(cam), cam_y, 0.1));

	camera_set_view_pos(cam, cam_x, cam_y);


	tempop += delta_time / 1000000;

	if (tempop >= tempo){
	    tempop = 0;
	    i++;
	
		switch (i){
			case 1:
				global.mos1 = true;
			break
			case 2:
				global.mos1 = false;
				global.mos2 = true;
			break
			case 3:
				global.mos2 = false;
				global.mos3 = true;
			break
			case 4:
				global.mos3 = false;
				global.mos4 = true;
			break
			case 5:
				global.mos4 = false;
				global.mos5 = true;
			break
		
		
			default:
				global.mos1 = false;
				global.mos2 = false;
				global.mos3 = false;
				global.mos4 = false;
				global.mos5 = false;
			break;
		}

	    if (i >= array_length(text)){
	        i = array_length(text) - 1;
	        global.dialogo = false;
			global.ini = true;
	    }
	}
	
}