if global.enemy_hp == 0 or global.player_hp == 0 {
	global.turn = 2
	if global.enemy_hp == 0{
		global.win_state = 1
	}else{
		global.win_state = 0
	}

}