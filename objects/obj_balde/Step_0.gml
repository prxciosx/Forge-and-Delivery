if (place_meeting(x,y,obj_arma) && obj_arma.estadoc == "quente"){
	audio_play_sound(sou_agua,1,false);
	obj_arma.estadoc = "frio";
}