if global.turn == 1 {
	global.enemy_active_defense -= global.player_damage
	if global.enemy_active_defense < 0{
		global.enemy_hp += global.enemy_active_defense			
	}
	global.turn = 0
	global.enemy_active_defense = 0
	global.energy -= 1
}

image_index = 0