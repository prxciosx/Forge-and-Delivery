if (!global.mostrar){
	if (global.ini){
	    var movex = -(keyboard_check(ord("A")) || keyboard_check(vk_left))
	              + (keyboard_check(ord("D")) || keyboard_check(vk_right));

	    var movey = -(keyboard_check(ord("W")) || keyboard_check(vk_up))
	              + (keyboard_check(ord("S")) || keyboard_check(vk_down));

	    var hspd = buff * (movex * spd);
	    var vspd = buff * (movey * spd);

	    if (!place_meeting(x + hspd, y, obj_block)){
	        x += hspd;
		}

	    if (!place_meeting(x, y + vspd, obj_block)){
	        y += vspd;
		}
		
	    if (movex != 0){
	        image_xscale = movex;
		}

	    var moving = (movex != 0 || movey != 0);

	    switch (state) {

	        // jogador normal parado
	        case 0:
				buff = 1;
	            sprite_index = spr_player;
	            image_speed = 0;
	            image_index = 0;

	            if (moving)
	                state = 1;
	        break;

	        // jogador normal andando
	        case 1:
				buff = 1;
	            sprite_index = spr_player;
	            image_speed = 1;

	            if (!moving)
	                state = 0;
	        break;

	        case 2:
				buff = 3;
	            sprite_index = spr_playerbarco;
	            image_speed = 1;

	            if (!moving)
	                state = 3;
	        break;

	        case 3:
				buff = 3;
	            sprite_index = spr_playerbarco;
	            image_speed = 0;
	            image_index = 0;

	            if (moving)
	                state = 2;
	        break;
	    }
	} else{
		image_index = 0;
	}
	
	if (global.capacidade > 1 && !test){
		mostrar_texto = true;
	} else{
		mostrar_texto = false;
	}
	
	if (keyboard_check_pressed(ord("C")) && array_length(global.mochila) < global.capacidade){
	    if (global.arma_mao != noone){
			if (global.arma_mao.estado != "" && global.arma_mao.estadoc == "frio"){
				test = true;
				array_push(global.mochila, global.arma_mao.destino);

		        with (global.arma_mao){
		            instance_destroy();
		        }

		        global.arma_mao = noone;
			}
	    }
	}
}

