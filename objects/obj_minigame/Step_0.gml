if (mostrar){
	cont += delta_time / 1000000;

	if (cont >= spawn) {
		
			if (instance_number(obj_click) < 2){
			
				var xx = irandom_range((32 * 5), (160 * 5));
				var yy = irandom_range((32 * 5), (160 * 5));
				
				var inst = instance_create_depth(xx, yy, -3, obj_click);
			}else{
				spawn = irandom_range(0,3);
			}
		
			spawn = irandom_range(0,3);
			cont = 0;
		}
	global.forja = true;
	global.ok = true;
} 