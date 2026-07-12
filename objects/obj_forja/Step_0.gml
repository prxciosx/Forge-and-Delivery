if (place_meeting(x,y,obj_arma) && obj_arma.estadoc == "frio"){
	audio_play_sound(sou_fogo,1,false);
	obj_arma.estadoc = "quente";
}