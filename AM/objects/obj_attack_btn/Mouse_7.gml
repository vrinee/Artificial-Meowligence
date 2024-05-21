if global.turn = true {
	global.enemy_active_defense -= global.player_damage
	if global.enemy_active_defense < 0{
		global.enemy_hp += global.enemy_active_defense	
		if global.enemy_hp < 0 {
			global.enemy_hp = 0
		}
	}
	global.turn = 0
	global.enemy_active_defense = 0
}

image_index = 0