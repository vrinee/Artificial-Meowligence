if(room == level01){
	complete = 6
	global.player_x = 50
	global.player_y = 130
}

if(room == level02){
	complete = 0
	global.player_x = 40
	global.player_y = 350
}

if(room == level03){
	complete = 0
	global.player_x = 190
	global.player_y = 260
}

if(room == level04 or room == level05){
	complete = 0
	global.player_x = 41
	global.player_y = 90
}

if(room == level06){
	complete = 12
	global.player_x = 70
	global.player_y = 96
}



for(var i = 0; i < array_length(global.enemys_won); i ++){
	if(global.enemys_won[i][1] == 1){
		complete -= 1;
	}
	if(complete == 0){
		break
	}
}
if(complete == 0){
	
	if(room_next(room) != -1) {
		show_debug_message(room_next(room))
		room_goto_next();
	
	}

	else {
		room_goto(leve01);
	}
}else{
	if (!global.dialogo) {
        var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
        _dialogo.npc_nome = "arrow"
		_dialogo.enemy_name = $"Faltam {complete} inimigos!";
		
        global.dialogo = true; // Ativar o estado de diálogo
	}
}

show_debug_message(complete)