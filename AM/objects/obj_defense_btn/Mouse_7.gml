if global.turn {
	global.player_active_defense += global.player_defense
	
	global.enemy_active_defense = 0
	global.turn = 0
	global.energy -=1 
}


image_index = 3