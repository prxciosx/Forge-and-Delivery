if (instance_exists(obj_player)){
	if (room != Room1){
		obj_player.state = 3;
	} else{
		obj_player.state = 0;
	}
	if (instance_exists(obj_ponto)){
		obj_player.x = obj_ponto.x
		obj_player.y = obj_ponto.y
	}
}