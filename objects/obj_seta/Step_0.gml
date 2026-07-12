if (room == Room2 && apont){
	image_angle = point_direction(x, y, xx, yy);
	switch (global.pedido){
			case "pontudo":
				xx = obj_castelop.x
				yy = obj_castelop.y
			break;
			case "ovni":
				xx = obj_casteloa.x
				yy = obj_casteloa.y
			break;
			case "ovo":
				xx = obj_casteloo.x
				yy = obj_casteloo.y
			break;
			case "triangulo":
				xx = obj_castelot.x
				yy = obj_castelot.y
			break;
		}
}

if (global.pedido != ""){
	apont = true;
} else{
	apont = false;
}
x = obj_player.x
y = obj_player.y