complete = 6

for(var i = 0; i < 7; i ++){
	if(global.enemys_won[i][1] == 1){
		complete -= 1;
	}
}
if(complete == 0){
	if(room_next(room) != -1) {
		global.player_x = 50
		global.player_y = 130
		show_debug_message(room_next(room))
		room_goto_next();
	
	}

	else {
		room_goto(leve01);
	}
}else{
	texto[0] = "Não matou todos os inimigos"
}

show_debug_message(complete)