if global.enemy_hp <= 0 or global.player_hp <= 0 {
	if global.enemy_hp == 0{
		global.win_state = 1
		for(var i = 0; i < array_length(global.enemys_won); i ++){
			if(global.enemys_won[i][0] == global.enemy_name){
				global.enemys_won[i][1] = 1
			}
		}
		room_goto(global.Croom)
	}else{
		
		global.win_state = 0
	}
}

