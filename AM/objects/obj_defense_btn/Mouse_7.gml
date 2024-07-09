if global.turn == 1 {
	global.player_active_defense += global.player_defense
	
	global.enemy_active_defense = 0
	global.energy -=1 
}


image_index = 3